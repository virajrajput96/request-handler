package = "request-handler"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/virajrajput96/request-handler",
  tag = "v0.1-1"
}
description = {
  summary = "Request Handler Plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/virajrajput96/request-handler",
  detailed = [[
      Request Handler Plugin.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.request-handler.handler"] = "kong/plugins/request-handler/handler.lua",
    ["kong.plugins.request-handler.schema"] = "kong/plugins/request-handler/schema.lua"
  }
}
