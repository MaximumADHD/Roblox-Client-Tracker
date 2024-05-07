-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.getUDim2ScaleFromOffset)
local var2 = require(var0.Src.Util.getVector2FromUDim2Scale)
local var3 = require(var0.Src.Util.getUDim2FromVector2)
local var4 = require(var0.Src.Util.rotatePoint)
local var5 = game:GetFastFlag("PathEditorRotation")
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if 0 >= arg1 then
         if var0.ControlPoints < arg1 then
            return var0
         end
      end
      return var0
      local var1 = arg2
      if var5 then
         if var0.ParentAbsRotation == 0 then
            var1 = var3(var4(var2(var1, var0.SelectedObject.Parent), var0.ParentAbsSize * 0.5, 65535 * var0.ParentAbsRotation))
         end
      end
      local var2 = var0.ControlPoints
      if var0.ScalePositionMode then
         var1 = var1(var1, var0.SelectedObject.Parent)
      end
      var2[arg1].Position = var1
      var0.SelectedObject:SetControlPoints(var2)
   end
end
