-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var0 = typeof(arg1)
   if var0 == "Instance" then
      local var0 = false
   end
   assert(true, "Expected draft to be Instance. Got \'" ... var0 ... "\'")
   assert(arg1:IsA("LuaSourceContainer"), "Expected draft to be a LuaSourceContainer. Got \'" ... arg1.ClassName ... "\'")
   local var1 = {}
   var1.Draft = arg1
   return var1
end)
