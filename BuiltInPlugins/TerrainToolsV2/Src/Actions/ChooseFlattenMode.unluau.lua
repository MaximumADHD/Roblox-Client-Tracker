-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected flattenMode to be a string, received {type(arg1)}`
   assert()
   local var2 = {}
   var2.flattenMode = arg1
   return var2
end)
