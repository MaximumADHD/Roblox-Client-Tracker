-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("PathEditor")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.getUDim2Inverse)
return function(arg1)
   local var0 = {}
   if arg1.LeftTangent ~= var2(arg1.RightTangent) then
      local var0 = false
   end
   var0.Mirrored = true
   if arg1.LeftTangent ~= UDim2.new() then
      if arg1.RightTangent ~= UDim2.new() then
         local var0 = false
      end
      local var0 = true
   end
   var0.Sharp = true
   return var0
end
