local llthreads2 = require("llthreads2.ex")

local http_thread = llthreads2.new([[
    local start_http_server = require("http-server")
    start_http_server(8080)
]])

local ws_thread = llthreads2.new([[
    local start_ws_server = require("websocket-server")
    start_ws_server()
]])

http_thread:start()
ws_thread:start()

http_thread:join()
ws_thread:join()

