-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local function fun0(arg1)
   return var0:JSONEncode(arg1)
end

local var1 = {}
function var1.new()
   local var0 = {}
   var0.map = {}
   var0.mt = {}
   local var213 = var0.mt
   function var213.__index(arg1)
      return var0:JSONEncode(arg1)
   end
   
   var213 = var0
   setmetatable(var213, var0.mt)
   return var0
end

return var1
