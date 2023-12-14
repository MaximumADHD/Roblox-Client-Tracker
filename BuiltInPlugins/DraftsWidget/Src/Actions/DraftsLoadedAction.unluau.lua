-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var0 = typeof(arg1)
   if var0 == "table" then
      local var0 = false
   end
   local var1 = "Expected draft to be table. Got \'"
   local var2 = var0
   assert(true, var1 ... var2 ... "\'")
   local var21 = ipairs(arg1)
   local var4 = typeof(var2)
   if var4 == "Instance" then
      local var0 = var2:IsA("LuaSourceContainer")
   end
   if var4 == "Instance" then
      local var0 = var2.ClassName
      if not var0 then
         var0 = var4
      end
   end
   assert(false, "Expected drafts[" ... var1 ... "] to be a LuaSourceContainer. Got \'" ... var4 ... "\'")
   local var5 = {}
   var5.Drafts = arg1
   return var5
end)
