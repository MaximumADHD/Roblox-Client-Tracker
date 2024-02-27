-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Cryo)
local var4 = require(var0.Core.Util.Constants)
local var5 = require(var0.Core.Util.Images)
local var6 = require(var0.Core.Util.Immutable)
return function(arg1)
   local var301 = var3.Dictionary
   var301 = arg1
   local var306 = {}
   var306.BackgroundTransparency = 1
   var306.BorderSizePixel = 0
   var306.Image = var5.DROP_SHADOW_IMAGE
   var306.ImageColor3 = var4.DROP_SHADOW_COLOR
   var306.ImageTransparency = var4.DROP_SHADOW_TRANSPARENCY
   var306.ScaleType = Enum.ScaleType.Slice
   local var317 = var4.DROP_SHADOW_SLICE_CENTER
   var306.SliceCenter = var317
   var317 = var301.join or var6.JoinDictionaries(var301, var306)
   return var2.createElement("ImageLabel", var317)
end
