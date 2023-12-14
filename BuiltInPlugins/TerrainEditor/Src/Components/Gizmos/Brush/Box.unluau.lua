-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Packages.React)
return function(arg1)
   local var0 = arg1.Adornee
   local var1 = arg1.CFrame
   local var2 = arg1.Color
   local var3 = arg1.Size
   local var4 = arg1.Transparency
   local var19 = {}
   local var23 = {}
   var23.Adornee = var0
   var23.AlwaysOnTop = true
   var23.CFrame = var1
   var23.Color = var2
   var23.Size = var3
   var23.Transparency = var4
   var23.ZIndex = 0
   var19.OnTop = var0.createElement("BoxHandleAdornment", var23)
   local var30 = {}
   var30.Adornee = var0
   var30.CFrame = var1
   var30.Color = var2
   var30.Size = var3
   var30.Transparency = var4
   var19.Outline = var0.createElement("BoxHandleAdornment", var30)
   return var0.createElement(var0.Fragment, {}, var19)
end
