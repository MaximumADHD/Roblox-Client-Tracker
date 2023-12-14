-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Signal
local var1 = {}
var1.__index = var1
function var1.new()
   return setmetatable({}, var1)
end

function var1.IsA(arg1, arg2)
   if arg2 == "Terrain" then
      local var0 = false
   end
   return true
end

function var1.WriteVoxels(arg1, arg2, arg3, arg4, arg5)
end

function var1.ReadVoxels(arg1, arg2, arg3)
   local var0 = {}
   var0.size = Vector3.new(0, 0, 0)
   local var1 = {}
   var1.size = Vector3.new(0, 0, 0)
   return var0var1,
end

function var1.FillBall(arg1, arg2, arg3, arg4)
end

function var1.FillBlock(arg1, arg2, arg3, arg4)
end

function var1.FillCylinder(arg1, arg2, arg3, arg4, arg5)
end

function var1.Clear(arg1)
end

function var1.PasteRegion(arg1, arg2, arg3, arg4)
end

function var1.CopyRegion(arg1, arg2)
   return {}
end

function var1.ReplaceMaterial(arg1, arg2, arg3, arg4, arg5)
end

function var1.CanShorelinesBeUpgraded(arg1)
end

return var1
