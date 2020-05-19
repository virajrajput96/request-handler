local requestHandler = {}
requestHandler.PRIORITY = 2000
requestHandler.version = "0.1-1"


function requestHandler:log(conf)

local ok

   ngx.log(ngx.ERR, "[request-handler] successful request: ", ok)
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
 
end
end

return requestHandler
