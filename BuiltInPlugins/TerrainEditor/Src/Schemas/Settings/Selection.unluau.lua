-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.SelectionSettings
local var4 = var2.Storage
local var5 = var2.Categories.SelectionSettings
local var6 = {}
var3.Size = var4.Global
var3.Position = var4.Global
var3.Transform = var4.Global
var3.SnapToVoxels = var4.Global
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var35 = {}
   var35.Id = var3.Size
   local var38 = {}
   var38.Type = "Vector"
   local var41 = "X"
   local var42 = "Y"
   local var43 = "Z"
   var38.Components = {}
   function var38.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var38.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var35.Schema = var38
   function var35.Validate(arg1)
      if 4 > arg1.X then
         if 4 > arg1.Y then
            if arg1.Z < 4 then
               return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
            end
         end
      end
      return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
      return Enum.PropertyStatus.Ok"",
   end
   
   local var76 = {}
   var76.DataId = var3.Transform
   var76.Hidden = false
   var76.Id = var3.Position
   local var82 = {}
   var82.Type = "Vector"
   local var85 = "X"
   local var86 = "Y"
   local var87 = "Z"
   var82.Components = {}
   function var82.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var82.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var76.Schema = var82
   var76.Value = arg2[var3.Transform]
   local var10 = {}
   var10.DataId = var3.Transform
   var10.Id = var3.Rotation
   local var114 = {}
   var114.Type = "Vector"
   local var117 = "X"
   local var13 = "Y"
   local var14 = "Z"
   var114.Components = {}
   function var114.GetValue(arg1)
      return CFrame.fromEulerAnglesXYZ(math.rad(arg1[1]), math.rad(arg1[2]), math.rad(arg1[3])) + arg2[var3.Transform].Position
   end
   
   function var114.GetComponents(arg1)
      local var0 = math.deg(arg1:ToEulerAnglesXYZ())
      local var1 = math.deg(var145)
      local var2 = math.deg(var148)
      return {}
   end
   
   var10.Schema = var114
   var10.Value = arg2[var3.Transform]
   local var15 = {}
   var15.Id = var3.SnapToVoxels
   local var16 = {}
   var16.Type = "Checkbox"
   var15.Schema = var16
   local var159 = {}
   var159.Category = var5
   var159.Data = arg2
   var159.Overrides = arg4
   return var1(arg1, {}, var159)
end

return var6
