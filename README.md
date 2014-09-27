# beamer-remote

Use your iPhone to browse through media on your Mac and instantly stream movies and TV shows to your Apple TV—without ever having to get off the couch.

## Installation

```sh
gem install beamer-remote
```

## Usage

### On your Mac

- Make sure you have the [Beamer Mac app](http://beamer-app.com/) installed.
- Start the server
    ```sh
    beamer-remote
    ```

    When you're done, you can stop the server using `beamer-remote -K`. Alternatively, you can run the server in the foreground using `beamer-remote -F`.

- Make note of the port listed in the server logs: `Listening on 0.0.0.0:5678`—those last 4 digits are the port.
- Find your Mac's IP address through System Preferences > Network: `Wi-Fi is connected to SomeNetwork and has the IP address 192.168.178.13.`

### On your iPhone

- Make sure your iPhone is connected to the same network as your Mac (and Apple TV).
- Navigate to `[ip address]:[port]` in Safari: `192.168.178.13:5678`.
- See all of your media in the palm of your hand.
- Rejoice, for you never need to get off the couch again.
- Add the web app to your Home Screen for the smoothest experience.

**Tip** for Mac: If you want the `beamer-remote` server to start automatically every time you boot your Mac (as you should), do as follows:
- Find the location where `beamer-remote` is installed by running `which beamer-remote`.
- Go to System Preferences > Users & Groups > Login Items and choose the add (`+`) button.
- Navigate to `beamer-remote` at the location you just found and choose "Add".
- There is no step 4.

**Tip** for iPhone: If you store all of your media in one directory, say `/Volumes/Media HD/Movies`, save yourself time by browsing to that specific location on your iPhone and bookmarking _that_: `http://192.168.178.13:5678/browse/Volumes/Media%20HD/Movies`.

## License
Copyright (c) 2014 Douwe Maan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.