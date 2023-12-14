-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local function var1(arg1, arg2)
   local var0 = arg2[1]
   if var0 then
      if var0:IsA("PVInstance") then
         local var0 = {}
         var0._primaryObject = var0
         var0._isEmpty = false
         var0._basisCFrame = var0:GetPivot()
         return var0
      end
   end
   local var1 = {}
   var1._primaryObject = nil
   var1._isEmpty = true
   var1._basisCFrame = CFrame.new()
   return var1
end

local var2 = {}
var2.__index = var2
function var2.new(arg1, arg2)
   return setmetatable(var1(arg1, arg2), var2)
end

function var2.isEmpty(arg1)
   return arg1._isEmpty
end

function var2.getBoundingBox(arg1)
   return arg1._basisCFrameVector3.new(),Vector3.new(),
end

function var2.doesContainItem(arg1, arg2)
   local var0 = arg1._isEmpty
   if var0 then
      local var0 = true
      if arg2 ~= arg1._primaryObject then
         local var0 = arg2:IsDescendantOf(arg1._primaryObject)
      end
   end
   return var0
end

function var2.getPrimaryObject(arg1)
   return arg1._primaryObject
end

function var2.isDynamic(arg1)
   return false
end

return var2
