-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   if arg1 then
      if type(arg1) == "string" then
         local var0 = false
      end
      local var0 = true
      local var1 = string.format("Expected aString to be a string, received %s", tostring(arg1))
      assert()
   end
   local var0 = {}
   var0.message = arg1
   return var0
end)
