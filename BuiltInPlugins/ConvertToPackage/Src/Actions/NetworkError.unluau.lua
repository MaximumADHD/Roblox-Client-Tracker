-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Src.Actions.Action)(script.Name, function(arg1, arg2)
   if type(arg2) == "string" then
      local var0 = false
   end
   local var46 = true
   local var52 = string.format("networkErrorAction must be a string, received %s", type(arg2))
   assert()
   local var55 = true
   if type(arg1) == "string" then
      if type(arg1) == "table" then
         local var0 = false
      end
      local var0 = true
   end
   local var69 = string.format("response must be a string, or table, received %s", type(arg1))
   assert()
   local var2 = arg1
   var69 = arg1
   if typeof(var69) == "string" then
      local var0 = {}
      var0.responseBody = arg1
      var2 = var0
   end
   local var3 = {}
   var3.response = var2
   var3.networkErrorAction = arg2
   return var3
end)
