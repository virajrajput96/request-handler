local requestHandler = {}
requestHandler.PRIORITY = 7
requestHandler.version = "0.1.1"

local err,ok
scheme=kong.request.get_scheme()
f_scheme=kong.request.get_forwarded_scheme()
forwarded_host=kong.request.get_forwarded_host()
method=kong.request.get_method()
path=kong.request.get_path()

function requestHandler:log(conf)
 
 if not (string.match(scheme,"$") or string.match(host,"$") or string.match(port,"$") or string.match(f_scheme,"$") or string.match(forwarded_host(),"$") or string.match(method,"$") or string.match(path,"$")) then
   return kong.log.debug("Successful Request")
 else
   return kong.log.debug("Mission Failed")
end
end

return requestHandler


