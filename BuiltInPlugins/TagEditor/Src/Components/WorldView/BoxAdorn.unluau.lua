-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Constants)
return function(arg1)
   if arg1.Adornee.ClassName == "Attachment" then
      local var305 = {}
      var305.Adornee = arg1.Adornee.Parent
      var305.CFrame = arg1.Adornee.CFrame
      var305.Size = var2.WorldView.BoxAdorn.Size
      var305.Transparency = var2.WorldView.BoxAdorn.Transparency
      var305.Color3 = arg1.Color
      return var1.createElement("BoxHandleAdornment", var305)
   end
   local var323 = {}
   var323.LineThickness = var2.WorldView.BoxAdorn.LineThickness
   var323.SurfaceTransparency = var2.WorldView.BoxAdorn.SurfaceTransparency
   var323.SurfaceColor3 = arg1.Color
   var323.Adornee = arg1.Adornee
   var323.Color3 = arg1.Color
   var323.StudioSelectionBox = true
   return var1.createElement("SelectionBox", var323)
end
