return {
  no_consumer = false, 
  fields = {
    header = {
       type = "table",
       schema = {
          fields = {
             header = {type = "string", default = {}},
             value = {type = "stirng", default = {}},
             upstream = {type = "string", default = {}}
          }
       }
    }
  },
  self_check = function(schema, plugin_t, dao, is_updating)
    
    return true
  end
}
