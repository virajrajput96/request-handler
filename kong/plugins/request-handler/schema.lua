local typedefs = require "kong.db.schema.typedefs"

return {
  name = "request-handler",
  fields = {
    { protocols = typedefs.protocols_http },
    { config = {
        type = "record",
        fields = {
      
          },
    }, }, },
  }

