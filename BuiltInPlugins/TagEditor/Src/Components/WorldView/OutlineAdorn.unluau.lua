-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Constants)
return function(arg1)
   if arg1.Adornee.ClassName == "Attachment" then
      local var19 = {}
      var19.Adornee = arg1.Adornee.Parent
      var19.CFrame = arg1.Adornee.CFrame
      var19.Size = var2.WorldView.OutlineAdorn.Size
      var19.Transparency = var2.WorldView.OutlineAdorn.Transparency
      var19.Color3 = arg1.Color
      return var1.createElement("BoxHandleAdornment", var19)
   end
   local var37 = {}
   var37.LineThickness = var2.WorldView.OutlineAdorn.LineThickness
   var37.Adornee = arg1.Adornee
   var37.Color3 = arg1.Color
   var37.StudioSelectionBox = true
   return var1.createElement("SelectionBox", var37)
end
