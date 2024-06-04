-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Constants)
return function(arg1)
   if arg1.Adornee.ClassName == "Attachment" then
      local var311 = {}
      var311.Adornee = arg1.Adornee.Parent
      var311.CFrame = arg1.Adornee.CFrame
      var311.Size = var2.WorldView.BoxAdorn.Size
      var311.Transparency = var2.WorldView.BoxAdorn.Transparency
      var311.Color3 = arg1.Color
      return var1.createElement("BoxHandleAdornment", var311)
   end
   local var329 = {}
   var329.LineThickness = var2.WorldView.BoxAdorn.LineThickness
   var329.SurfaceTransparency = var2.WorldView.BoxAdorn.SurfaceTransparency
   var329.SurfaceColor3 = arg1.Color
   var329.Adornee = arg1.Adornee
   var329.Color3 = arg1.Color
   var329.StudioSelectionBox = true
   return var1.createElement("SelectionBox", var329)
end
