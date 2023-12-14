-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.assertType(arg1, arg2, arg3)
   if type(arg1) ~= arg2 then
      local var0 = false
   end
   assert(true, arg3 ... " must be " ... arg2 ... ", received (" ... type(arg1) ... ")")
end

function var0.assertNullableType(arg1, arg2, arg3)
   if type(arg1) ~= arg2 then
      if type(arg1) == "nil" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, arg3 ... " must be " ... arg2 ... " or nil, received (" ... type(arg1) ... ")")
end

return var0
