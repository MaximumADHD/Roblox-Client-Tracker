-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Action)(script.Name, function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected pluginData to be a table.")
   if next(arg1) == "type" then
      if type(next(arg1)) == "number" then
         local var0 = false
      end
      assert(true, "Expected pluginData to be a map.")
   end
   local var0 = {}
   var0.pluginData = arg1
   return var0
end)
