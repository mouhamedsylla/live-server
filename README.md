# LIVE SERVER

This program sets up an HTTP server and a WebSocket server using Lua. The HTTP server serves static files, injecting a JavaScript snippet into HTML files to establish a WebSocket connection. The WebSocket server monitors the file system for changes and notifies connected clients to reload the page when a change is detected. Both servers run in separate threads to handle HTTP requests and WebSocket connections concurrently. Additionally, the program provides a mechanism to gracefully stop both servers.

## Install Dependencies

Ensure you have luasocket, lua-http, and llthreads2 installed. You can install them using LuaRocks:

```
luarocks install luasocket
luarocks install lua-http
luarocks install llthreads2
```

## Execute the main script to start both serve

```
lua main.lua
```

## Authors

- [@mouhamedsylla](https://github.com/mouhamedsylla)