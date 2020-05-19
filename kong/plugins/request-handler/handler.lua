local requestHandler = {}
requestHandler.PRIORITY = 2000
requestHandler.version = "0.1-1"


function requestHandler:log(conf)



   ngx.log(ngx.ERR, "successful request: ")
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
 
end
end

return requestHandler
