-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("PathEditor").Src.Types)
return function(arg1)
   local var0 = {}
   if arg1.LeftTangent ~= arg1.RightTangent * -1 then
      local var0 = false
   end
   var0.Mirrored = true
   if arg1.LeftTangent ~= Vector2.zero then
      if arg1.RightTangent ~= Vector2.zero then
         local var0 = false
      end
      local var0 = true
   end
   var0.Sharp = true
   return var0
end
