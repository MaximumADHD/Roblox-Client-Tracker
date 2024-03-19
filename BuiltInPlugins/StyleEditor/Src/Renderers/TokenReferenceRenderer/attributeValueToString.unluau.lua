-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Src.Types)
local var1 = {}
function var1.string(arg1)
   return string.format("\'%s\'", arg1)
end

function var1.number(arg1)
   return string.format("%.3f", arg1)
end

function var1.UDim(arg1)
   return string.format("{%.3f, %d}", arg1.Scale, arg1.Offset)
end

function var1.UDim2(arg1)
   return string.format("{%.3f, %d}, {%.3f, %d}", arg1.X.Scale, arg1.X.Offset, arg1.Y.Scale, arg1.Y.Offset)
end

function var1.Vector2(arg1)
   return string.format("{%.3f, %.3f}", arg1.X, arg1.Y)
end

function var1.Vector3(arg1)
   return string.format("{%.3f, %.3f, %.3f}", arg1.X, arg1.Y, arg1.Z)
end

function var1.Rect(arg1)
   return string.format("{%.3f, %.3f}, {%.3f, %.3f}", arg1.Min.X, arg1.Min.Y, arg1.Max.X, arg1.Max.Y)
end

function var1.Color3(arg1)
   return string.format("#%s", arg1:ToHex())
end

function var1.Font(arg1, arg2)
   local var0 = arg2.Fonts[arg1.Family]
   if var0 then
      return var0.Name
   end
   return arg1.Family:match("/([^%s/]+)%.json") or arg1.Family
end

function var1.BrickColor(arg1)
   return arg1.Name
end

function var1.CFrame(arg1)
   local var120 = arg1.Position
   var120 = arg1:ToEulerAnglesXYZ()
   return string.format("{%.3f, %.3f, %.3f}, {%.3f, %.3f, %.3f}", arg1.Position.X, arg1.Position.Y, var120.Z, var120, var122, var123)
end

function var1.NumberSequence(arg1)
   if arg1.Keypoints > 2 then
      if arg1.Keypoints[1].Value ~= arg1.Keypoints[2].Value then
         return "<NumberSequence>"
      end
   end
   return "<NumberSequence>"
   return string.format("%.3f", arg1.Keypoints[1].Value)
end

function var1.ColorSequence(arg1)
   if arg1.Keypoints > 2 then
      if arg1.Keypoints[1].Value ~= arg1.Keypoints[2].Value then
         return "<ColorSequence>"
      end
   end
   return "<ColorSequence>"
   return string.format("#%s", arg1.Keypoints[1].Value:ToHex())
end

return function(arg1, arg2)
   local var165 = var1
   local var168 = typeof(arg1)
   local var1 = var165[var168]
   if var1 then
      var165 = var1
      var168 = arg1
      return var165(var168, arg2)
   end
   var168 = arg1
   return tostring(var168)
end
