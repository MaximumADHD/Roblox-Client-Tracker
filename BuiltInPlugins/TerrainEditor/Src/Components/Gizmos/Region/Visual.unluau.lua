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
   local var186 = {}
   local var191 = {}
   local var195 = {}
   var195.Adornee = var0
   var195.AlwaysOnTop = true
   var195.Color = var1
   var195.LineThickness = var2
   var195.Lines = var3
   var195.Scale = var4
   var195.Size = var5
   var195.Transform = var6
   var195.Transparency = var7
   var191.OnTopBox = var1.createElement(var3, var195)
   local var201 = {}
   var201.Adornee = var0
   var201.AlwaysOnTop = false
   var201.Color = var1
   var201.LineThickness = var2
   var201.Lines = var3
   var201.Scale = var4
   var201.Size = var5
   var201.Transform = var6
   var201.Transparency = var7
   var191.InTopBox = var1.createElement(var3, var201)
   var186.RegionVisual = var1.createElement("Folder", {}, var191)
   return var2.createPortal(var186, game:GetService("CoreGui"))
end
