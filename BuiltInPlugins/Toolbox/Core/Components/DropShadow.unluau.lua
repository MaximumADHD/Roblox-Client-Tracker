-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Cryo)
local var4 = require(var0.Core.Util.Constants)
local var5 = require(var0.Core.Util.Images)
local var6 = require(var0.Core.Util.Immutable)
return function(arg1)
   local var288 = var3.Dictionary
   var288 = arg1
   local var293 = {}
   var293.BackgroundTransparency = 1
   var293.BorderSizePixel = 0
   var293.Image = var5.DROP_SHADOW_IMAGE
   var293.ImageColor3 = var4.DROP_SHADOW_COLOR
   var293.ImageTransparency = var4.DROP_SHADOW_TRANSPARENCY
   var293.ScaleType = Enum.ScaleType.Slice
   local var304 = var4.DROP_SHADOW_SLICE_CENTER
   var293.SliceCenter = var304
   var304 = var288.join or var6.JoinDictionaries(var288, var293)
   return var2.createElement("ImageLabel", var304)
end
