-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(script.Fill)
return function(arg1)
   local var0 = arg1.Adornee
   local var1 = arg1.Color
   local var2 = arg1.LineThickness
   local var3 = arg1.Lines
   local var4 = arg1.Scale
   local var5 = arg1.Size
   local var6 = arg1.Transform
   local var7 = arg1.Transparency
   local var115 = {}
   local var120 = {}
   local var124 = {}
   var124.Adornee = var0
   var124.AlwaysOnTop = true
   var124.Color = var1
   var124.LineThickness = var2
   var124.Lines = var3
   var124.Scale = var4
   var124.Size = var5
   var124.Transform = var6
   var124.Transparency = var7
   var120.OnTopBox = var1.createElement(var3, var124)
   local var130 = {}
   var130.Adornee = var0
   var130.AlwaysOnTop = false
   var130.Color = var1
   var130.LineThickness = var2
   var130.Lines = var3
   var130.Scale = var4
   var130.Size = var5
   var130.Transform = var6
   var130.Transparency = var7
   var120.InTopBox = var1.createElement(var3, var130)
   var115.RegionVisual = var1.createElement("Folder", {}, var120)
   return var2.createPortal(var115, game:GetService("CoreGui"))
end
