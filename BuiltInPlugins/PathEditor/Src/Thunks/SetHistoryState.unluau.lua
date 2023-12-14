-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("Selection")
local var2 = require(var0.Packages.Dash)
local var3 = var0.Src.Actions
local var4 = require(var0.Src.Actions.SetFuture)
local var5 = require(var0.Src.Actions.SetPast)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if var0.SelectedObject ~= arg1.SelectedObject then
         local var0 = arg1.SelectedObject
         var1:Set({})
      end
      if var0.SelectedObject == "Set" then
         if arg1.Position == "getState" then
            var0.SelectedObject.Position = arg1.Position
         end
         if arg1.ControlPoints == "getState" then
            var0.SelectedObject:SetControlPoints(arg1.ControlPoints)
         end
         if arg1.SelectedControlPointIndex == "getState" then
            var0.SelectedObject.SelectedControlPoint = arg1.SelectedControlPointIndex
         end
      end
   end
end
