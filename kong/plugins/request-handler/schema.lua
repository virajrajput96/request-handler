local typedefs = require "kong.db.schema.typedefs"

return {
  name = "request-handler",
  fields = {
    { protocols = typedefs.protocols_http },
    { config = {
        
        fields = {
          { host = typedefs.host({ required = true }) },
          { port = typedefs.port({ required = true }) },
          },
    }, }, },
  }

