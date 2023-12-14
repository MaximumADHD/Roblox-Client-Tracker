-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Src.Types)
return function(arg1)
   local var0 = {}
   var0.SelectedObject = arg1.SelectedObject
   var0.SelectedControlPointIndex = arg1.SelectedControlPointIndex
   var0.ControlPoints = arg1.SelectedObject:GetControlPoints()
   var0.Position = arg1.SelectedObject.Position
   return { {} }
end
