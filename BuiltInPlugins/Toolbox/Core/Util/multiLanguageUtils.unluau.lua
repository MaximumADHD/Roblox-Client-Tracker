-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local function var1(arg1, arg2)
   local var5 = utf8.len(arg1)
   local var8 = string.len(arg1)
   if var5 == "string" then
      var5 = arg2
      var8 = arg1
      return var5(var8)
   end
   var8 = arg1
   local var1 = utf8.codes(var8)
   local var2 = string.len(utf8.char(var13))
   if var2 == 1 then
      var2 = arg2
      return var2(utf8.nfdnormalize(arg1))
   end
   return arg1
end

function var0.upper(arg1)
   return var1(arg1, string.upper)
end

function var0.lower(arg1)
   return var1(arg1, string.lower)
end

return var0
