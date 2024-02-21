-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Thunks.RecordChangeHistory)
local var3 = require(var0.Src.Actions.SelectTangentSide)
local var4 = require(var0.Src.Actions.ToggleSharp)
local var5 = require(var0.Src.Util.getTangentNameForSide)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if 0 >= arg1 then
         if var0.ControlPoints < arg1 then
            return var0
         end
      end
      return var0
      local var1 = arg1
      local var2 = var0.SelectedObject:GetControlPoints()
      local var3 = var5(arg2)
      if var2[var1][var3] == "new" then
         return var0
      end
      local var53 = var2("Removed Tangent")
      arg1:dispatch()
      local var55 = var2[var1]
      var5(arg2) = UDim2.new()
      if not var0.ControlPointStates[var1].Sharp then
         local var0 = var4(var1)
         arg1:dispatch()
      end
      var53 = var2
      var0.SelectedObject:SetControlPoints(var53)
      if arg2 == "new" then
         local var0 = var3(nil)
         arg1:dispatch()
      end
      local var5 = var2()
      arg1:dispatch()
   end
end
