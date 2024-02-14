-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(script.Parent.Box)
return function(arg1)
   local var0 = arg1.Adornee
   local var1 = arg1.Color
   local var2 = arg1.LineThickness
   local var3 = arg1.Lines
   local var4 = arg1.Scale
   local var5 = arg1.Size
   local var6 = arg1.Transform
   local var7 = arg1.Transparency
   local var185 = {}
   local var190 = {}
   local var194 = {}
   var194.Adornee = var0
   var194.AlwaysOnTop = true
   var194.Color = var1
   var194.LineThickness = var2
   var194.Lines = var3
   var194.Scale = var4
   var194.Size = var5
   var194.Transform = var6
   var194.Transparency = var7
   var190.OnTopBox = var1.createElement(var3, var194)
   local var200 = {}
   var200.Adornee = var0
   var200.AlwaysOnTop = false
   var200.Color = var1
   var200.LineThickness = var2
   var200.Lines = var3
   var200.Scale = var4
   var200.Size = var5
   var200.Transform = var6
   var200.Transparency = var7
   var190.InTopBox = var1.createElement(var3, var200)
   var185.RegionVisual = var1.createElement("Folder", {}, var190)
   return var2.createPortal(var185, game:GetService("CoreGui"))
end
