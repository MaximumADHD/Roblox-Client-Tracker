-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var14 = true
   local var20 = `Expected toolName to be a string, received {type(arg1)}`
   assert()
   if type(arg2) == "table" then
      local var0 = false
   end
   local var2 = true
   local var3 = `Expected toolAction to be a table, received {type(arg2)}`
   assert()
   local var4 = {}
   var4.toolName = arg1
   var4.toolAction = arg2
   return var4
end)
