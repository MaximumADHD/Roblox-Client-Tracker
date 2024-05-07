-- Generated with Unluau (https://github.com/valencefun/unluau)
local function fun0(arg1, arg2)
   return pcall(function()
      local var0 = arg1[arg2]
   end)
end

return function(arg1, arg2)
   local var0 = arg1:GetPositionOnCurve(arg2)
   if var0.X.Scale == 0 then
      if var0.Y.Scale == 0 then
         return var0
      end
   end
   local var50 = arg1.Parent
   if var50 == "GetPositionOnCurve" then
      local var0 = arg1.Parent
      local var1 = "AbsoluteSize"
      var50 = pcall(function()
         local var0 = arg1[arg2]
      end)
      if var50 then
         return UDim2.fromOffset(var0.X.Scale * arg1.Parent.AbsoluteSize.x, var0.Y.Scale * arg1.Parent.AbsoluteSize.y)
      end
   end
   return UDim2.new()
end
