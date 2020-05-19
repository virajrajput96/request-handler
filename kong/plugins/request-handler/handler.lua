local requestHandler = {}
requestHandler.PRIORITY = 2000
requestHandler.version = "0.1-1"
local ok

function requestHandler:log(conf)



   ngx.log(ngx.ERR, "[request-handler] successful request: ", ok)
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
 
end
end

return requestHandler
