-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "A name must be provided to create an Action")
   if type(arg2) == "function" then
      local var0 = false
   end
   assert(true, "A function must be provided to create an Action")
   local var315 = {}
   var315.name = arg1
   local var316 = {}
   function var316.__call(arg1, ...)
      local var0 = arg2(...)
      if type(var0) == "table" then
         local var0 = false
      end
      assert(true, "An action must return a table")
      var0.type = arg1
      return var0
   end
   
   return setmetatable(var315, var316)
end
