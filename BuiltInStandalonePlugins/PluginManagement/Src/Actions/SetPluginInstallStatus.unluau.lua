-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Action)(script.Name, function(arg1, arg2, arg3)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "Expected pluginId to be a string")
   if type(arg2) == "number" then
      local var0 = false
   end
   assert(true, "Expected statusCode to be a number")
   if type(arg3) == "string" then
      local var0 = false
   end
   assert(true, "Expected message to be a string")
   local var0 = {}
   var0.pluginId = arg1
   var0.statusCode = arg2
   var0.message = arg3
   return var0
end)
