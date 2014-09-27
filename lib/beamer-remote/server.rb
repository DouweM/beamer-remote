require "sinatra"

module BeamerRemote
  class Server < Sinatra::Application
    set :root,          File.expand_path(File.dirname(__FILE__) + "/../../server")
    set :views,         "#{root}/views"
    set :public_folder, "#{root}/assets"

    helpers do
      def url_for_path(path)
        action = File.directory?(path) ? "browse" : "play"
        
        File.join("/", action, path)
      end

      def back_path(path)
        return if path == "/"

        File.expand_path(File.join(path, ".."))
      end
    end

    get "/" do
      redirect url("/browse/")
    end

    get "/browse/*" do |path|
      @path = File.join("/", path)
      @name = File.basename(@path)

      @entries = Dir.entries(@path).reject { |entry| entry.start_with?(".") }

      erb :browse, layout: !request.xhr?
    end

    get "/play/*" do |path|
      @path = File.join("/", path)
      @name = File.basename(@path)

      BeamerRemote.play("/#{path}")

      erb :play, layout: !request.xhr?
    end
  end
end