local requestHandler = {}
requestHandler.PRIORITY = 7
requestHandler.version = "0.1-1"

local ok,err

function requestHandler:log(conf)

scheme=kong.request.get_scheme()
f_scheme=kong.request.get_forwarded_scheme()
forwarded_host=kong.request.get_forwarded_host()
method=kong.request.get_method()
path=kong.request.get_path()

 if not string.match(scheme,"$") or string.match(host,"$") or string.match(port,"$") or string.match(f_scheme,"$") or string.match(forwarded_host(),"$") or string.match(method,"$") or string.match(path,"$") then
   ngx.log(ngx.ERR, "[request-handler] successful request: ", ok)
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
 else
   ngx.log(ngx.ERR, "[request-handler] request conatain $: ", err)
  ngx.header["request-handler"] = "Request-handler request Failed!!!!!"
end
end

return requestHandler
