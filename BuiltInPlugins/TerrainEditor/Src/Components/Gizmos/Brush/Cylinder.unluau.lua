-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Packages.React)
return function(arg1)
   local var0 = arg1.Adornee
   local var1 = arg1.CFrame
   local var2 = arg1.Color
   local var3 = arg1.Height
   local var4 = arg1.Radius
   local var5 = arg1.Transparency
   local var20 = {}
   local var24 = {}
   var24.Adornee = var0
   var24.AlwaysOnTop = true
   var24.CFrame = var1
   var24.Color = var2
   var24.Height = var3
   var24.Radius = var4
   var24.Transparency = var5
   var24.ZIndex = 0
   var20.OnTop = var0.createElement("CylinderHandleAdornment", var24)
   local var31 = {}
   var31.Adornee = var0
   var31.CFrame = var1
   var31.Color = var2
   var31.Height = var3
   var31.Radius = var4
   var31.Transparency = var5
   var20.Outline = var0.createElement("CylinderHandleAdornment", var31)
   return var0.createElement(var0.Fragment, {}, var20)
end
