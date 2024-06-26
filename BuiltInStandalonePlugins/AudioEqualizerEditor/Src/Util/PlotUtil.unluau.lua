-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AudioEqualizerEditor")
local var1 = {}
var1.Y_EXPONENT = 3
var1.X_MIN = 200
var1.X_MAX = 20000
var1.Y_MIN = 65456
var1.Y_MAX = 10
function var1.log2(arg1)
   return math.log(arg1) * 1.44269504089
end

function var1.plotToView(arg1)
   local var0 = var1.log2(var1.X_MIN)
   local var1 = (var1.log2(arg1.X) - var1.log2(var1.X_MIN)) / (var1.log2(var1.X_MAX) - var1.log2(var1.X_MIN))
   local var71 = (math.clamp(arg1.Y, var1.Y_MIN, var1.Y_MAX) - var1.Y_MIN) / (var1.Y_MAX - var1.Y_MIN)
   local var74 = (var71) ^ var1.Y_EXPONENT
   var74 = (var1.log2(arg1.X) - var0) / (var1.log2(var1.X_MAX) - var0)
   var71 = 1 - var74
   return Vector2.new(var74, var71)
end

function var1.viewToPlot(arg1)
   local var0 = var1.log2(var1.X_MIN)
   local var1 = var1.log2(var1.X_MAX)
   local var126 = var1
   local var127 = var126.Y_MIN
   var127 = 2 ^ (arg1.X * var1.log2(var1.X_MAX) + (1 - arg1.X) * var1.log2(var1.X_MIN))
   var126 = math.clamp(1 - arg1.Y, 0, 1) ^ (1 / var1.Y_EXPONENT) * (var1.Y_MAX - var1.Y_MIN) + var127
   return Vector2.new(var127, var126)
end

function var1.plotToAbs(arg1, arg2)
   local var133 = var1
   var133 = arg1
   return var133.plotToView(var133) * arg2
end

function var1.absToPlot(arg1, arg2)
   return var1.viewToPlot(arg1 / arg2)
end

function var1.mouseToPlot(arg1, arg2)
   if not arg2 then
      return Vector2.new(var1.X_MIN, var1.Y_MIN)
   end
   local var154 = var1
   var154 = arg1 - arg2.AbsolutePosition
   return var154.absToPlot(var154, arg2.AbsoluteSize)
end

return var1
