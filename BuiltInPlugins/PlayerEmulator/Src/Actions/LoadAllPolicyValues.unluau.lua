-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected allPolicies to be a table")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "Expected allPolicySortedKeys to be a table")
   local var0 = {}
   var0.allPolicies = arg1
   var0.allPolicySortedKeys = arg2
   return var0
end)
