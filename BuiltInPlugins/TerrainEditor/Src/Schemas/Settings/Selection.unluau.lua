-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.SelectionSettings
local var4 = var2.Storage
local var5 = require(var0.Src.Resources.Constants)
local var6 = var2.Category.SelectionSettings
local var7 = {}
var3.Size = var4.Global
var3.Position = var4.Global
var3.Transform = var4.Global
var3.SnapToVoxels = var4.Global
var7.Storage = {}
function var7.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var40 = {}
   var40.Id = var3.Size
   local var43 = {}
   var43.Type = "Vector"
   local var46 = "X"
   local var47 = "Y"
   local var48 = "Z"
   var43.Components = {}
   function var43.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var43.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var40.Schema = var43
   function var40.Validate(arg1)
      if 4 > arg1.X then
         if 4 > arg1.Y then
            if arg1.Z < 4 then
               return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
            end
         end
      end
      return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
      if arg1.X > var5.MaxRegion then
         if arg1.Y > var5.MaxRegion then
            if var5.MaxRegion < arg1.Z then
               return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "SizeMax"),
            end
         end
      end
      return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "SizeMax"),
      return Enum.PropertyStatus.Ok"",
   end
   
   local var102 = {}
   var102.DataId = var3.Transform
   var102.Hidden = false
   var102.Id = var3.Position
   local var108 = {}
   var108.Type = "Vector"
   local var111 = "X"
   local var112 = "Y"
   local var113 = "Z"
   var108.Components = {}
   function var108.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var108.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var102.Schema = var108
   var102.Value = arg2[var3.Transform]
   local var10 = {}
   var10.DataId = var3.Transform
   var10.Id = var3.Rotation
   local var140 = {}
   var140.Type = "Vector"
   local var143 = "X"
   local var13 = "Y"
   local var14 = "Z"
   var140.Components = {}
   function var140.GetValue(arg1)
      return CFrame.fromEulerAnglesXYZ(math.rad(arg1[1]), math.rad(arg1[2]), math.rad(arg1[3])) + arg2[var3.Transform].Position
   end
   
   function var140.GetComponents(arg1)
      local var0 = math.deg(arg1:ToEulerAnglesXYZ())
      local var1 = math.deg(var171)
      local var2 = math.deg(var174)
      return {}
   end
   
   var10.Schema = var140
   var10.Value = arg2[var3.Transform]
   local var15 = {}
   var15.Id = var3.SnapToVoxels
   local var16 = {}
   var16.Type = "Checkbox"
   var15.Schema = var16
   local var185 = {}
   var185.Category = var6
   var185.Data = arg2
   var185.Overrides = arg4
   return var1(arg1, {}, var185)
end

return var7
