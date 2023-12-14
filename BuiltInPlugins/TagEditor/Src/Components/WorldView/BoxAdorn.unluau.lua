-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Constants)
return function(arg1)
   if arg1.Adornee.ClassName == "Attachment" then
      local var315 = {}
      var315.Adornee = arg1.Adornee.Parent
      var315.CFrame = arg1.Adornee.CFrame
      var315.Size = var2.WorldView.BoxAdorn.Size
      var315.Transparency = var2.WorldView.BoxAdorn.Transparency
      var315.Color3 = arg1.Color
      return var1.createElement("BoxHandleAdornment", var315)
   end
   local var333 = {}
   var333.LineThickness = var2.WorldView.BoxAdorn.LineThickness
   var333.SurfaceTransparency = var2.WorldView.BoxAdorn.SurfaceTransparency
   var333.SurfaceColor3 = arg1.Color
   var333.Adornee = arg1.Adornee
   var333.Color3 = arg1.Color
   var333.StudioSelectionBox = true
   return var1.createElement("SelectionBox", var333)
end
