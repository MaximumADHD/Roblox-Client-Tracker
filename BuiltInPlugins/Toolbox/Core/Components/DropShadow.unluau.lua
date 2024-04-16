-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Cryo)
local var4 = require(var0.Core.Util.Constants)
local var5 = require(var0.Core.Util.Images)
local var6 = require(var0.Core.Util.Immutable)
return function(arg1)
   local var298 = var3.Dictionary
   var298 = arg1
   local var303 = {}
   var303.BackgroundTransparency = 1
   var303.BorderSizePixel = 0
   var303.Image = var5.DROP_SHADOW_IMAGE
   var303.ImageColor3 = var4.DROP_SHADOW_COLOR
   var303.ImageTransparency = var4.DROP_SHADOW_TRANSPARENCY
   var303.ScaleType = Enum.ScaleType.Slice
   local var314 = var4.DROP_SHADOW_SLICE_CENTER
   var303.SliceCenter = var314
   var314 = var298.join or var6.JoinDictionaries(var298, var303)
   return var2.createElement("ImageLabel", var314)
end
