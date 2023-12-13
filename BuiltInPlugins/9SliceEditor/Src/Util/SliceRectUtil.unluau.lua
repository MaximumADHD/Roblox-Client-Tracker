-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.Orientation)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Packages.Cryo)
local var4 = {}
local var5 = var1.Left.rawValue()
local var6 = var1.Right.rawValue()
local var7 = var1.Top.rawValue()
local var8 = var1.Bottom.rawValue()
function var4.getSliceRectFromSliceCenter(arg1)
   return { arg1.Min.X, arg1.Max.X, arg1.Min.Y, arg1.Max.Y }
end

function var4.getSliceCenterFromSliceRect(arg1)
   return Rect.new(arg1[var5], arg1[var7], arg1[var6], arg1[var8])
end

function var4.copySliceRect(arg1)
   local var53 = var3.Dictionary
   var53 = arg1
   return var53.join(var53)
end

function var4.getOffsetsFromSliceRect(arg1, arg2)
   local var0 = arg2.Y - arg1[var8]
   return { arg1[var5], arg2.X - arg1[var6], arg1[var7] }
end

function var4.getSliceRectFromOffsets(arg1, arg2)
   local var0 = arg2.Y - arg1[var8]
   return { arg1[var5], arg2.X - arg1[var6], arg1[var7] }
end

return var4
