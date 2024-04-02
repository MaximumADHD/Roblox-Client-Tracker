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
   local var201 = {}
   local var206 = {}
   local var210 = {}
   var210.Adornee = var0
   var210.AlwaysOnTop = true
   var210.Color = var1
   var210.LineThickness = var2
   var210.Lines = var3
   var210.Scale = var4
   var210.Size = var5
   var210.Transform = var6
   var210.Transparency = var7
   var206.OnTopBox = var1.createElement(var3, var210)
   local var216 = {}
   var216.Adornee = var0
   var216.AlwaysOnTop = false
   var216.Color = var1
   var216.LineThickness = var2
   var216.Lines = var3
   var216.Scale = var4
   var216.Size = var5
   var216.Transform = var6
   var216.Transparency = var7
   var206.InTopBox = var1.createElement(var3, var216)
   var201.RegionVisual = var1.createElement("Folder", {}, var206)
   return var2.createPortal(var201, game:GetService("CoreGui"))
end
