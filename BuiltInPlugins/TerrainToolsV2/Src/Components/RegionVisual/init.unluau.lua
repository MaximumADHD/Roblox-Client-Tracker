-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Roact)
local var1 = require(script.Box)
return function(arg1)
   local var0 = arg1.Adornee
   local var1 = arg1.Color
   local var2 = arg1.LineThickness
   local var3 = arg1.Lines
   local var4 = arg1.Transform
   local var5 = arg1.Scale
   local var6 = arg1.Size
   local var7 = arg1.Transparency
   local var8 = arg1.Wireframe
   local var145 = {}
   var145.target = game:GetService("CoreGui")
   local var150 = {}
   local var155 = {}
   local var159 = {}
   var159.Adornee = var0
   var159.AlwaysOnTop = true
   var159.CFrame = var4
   var159.Color = var1
   var159.LineThickness = var2
   var159.Lines = var3
   var159.Scale = var5
   var159.Size = var6
   var159.Transparency = var7
   var159.Wireframe = var8
   var155.OnTopBox = var0.createElement(var1, var159)
   local var165 = {}
   var165.Adornee = var0
   var165.AlwaysOnTop = false
   var165.CFrame = var4
   var165.Color = var1
   var165.LineThickness = var2
   var165.Lines = var3
   var165.Scale = var5
   var165.Size = var6
   var165.Transparency = var7
   var165.Wireframe = var8
   var155.InTopBox = var0.createElement(var1, var165)
   var150.RegionVisual = var0.createElement("Folder", {}, var155)
   return var0.createElement(var0.Portal, var145, var150)
end
