-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.TransformSettings
local var4 = var2.Storage
local var5 = var2.Categories.TransformSettings
local var6 = {}
var3.Apply = var4.LocalSession
var3.Size = var4.Global
var3.Position = var4.Global
var3.Transform = var4.Global
var3.MergeEmpty = var4.LocalPersistent
var3.LiveEdit = var4.LocalPersistent
var3.OperationSource = var4.LocalPersistent
var3.SnapToVoxels = var4.Global
var3.TerrainRegion = var4.Global
var3.TerrainRegionSize = var4.Global
var3.TerrainRegionTransform = var4.Global
var3.TerrainRegionBuffer = var4.Global
var3.TerrainRegionBufferSize = var4.Global
var3.TerrainRegionBufferTransform = var4.Global
var3.TransformMode = var4.Global
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var57 = {}
   var57.Id = var3.Size
   local var60 = {}
   var60.Type = "Vector"
   local var63 = "X"
   local var64 = "Y"
   local var65 = "Z"
   var60.Components = {}
   function var60.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var60.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var57.Schema = var60
   function var57.Validate(arg1)
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
   
   local var98 = {}
   var98.DataId = var3.Transform
   var98.Id = var3.Position
   var98.Hidden = false
   local var104 = {}
   var104.Type = "Vector"
   local var107 = "X"
   local var108 = "Y"
   local var109 = "Z"
   var104.Components = {}
   function var104.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var104.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var98.Schema = var104
   var98.Value = arg2[var3.Transform]
   local var10 = {}
   var10.DataId = var3.Transform
   var10.Id = var3.Rotation
   local var136 = {}
   var136.Type = "Vector"
   local var139 = "X"
   local var140 = "Y"
   local var141 = "Z"
   var136.Components = {}
   function var136.GetValue(arg1)
      return CFrame.fromEulerAnglesXYZ(math.rad(arg1[1]), math.rad(arg1[2]), math.rad(arg1[3])) + arg2[var3.Transform].Position
   end
   
   function var136.GetComponents(arg1)
      local var0 = math.deg(arg1:ToEulerAnglesXYZ())
      local var1 = math.deg(var167)
      local var2 = math.deg(var170)
      return {}
   end
   
   var10.Schema = var136
   var10.Value = arg2[var3.Transform]
   local var15 = {}
   var15.Id = var3.MergeEmpty
   local var179 = {}
   var179.Type = "Checkbox"
   var15.Schema = var179
   local var17 = {}
   var17.Id = var3.LiveEdit
   local var184 = {}
   var184.Type = "Checkbox"
   var17.Schema = var184
   local var19 = {}
   var19.Id = var3.SnapToVoxels
   local var189 = {}
   var189.Type = "Checkbox"
   var19.Schema = var189
   local var21 = {}
   var21.Id = var3.Apply
   local var22 = {}
   var22.Label = var0:getText(var5, var3.Apply)
   var22.Type = "Button"
   var21.Schema = var22
   local var201 = {}
   var201.Category = var5
   var201.Data = arg2
   var201.Overrides = arg4
   return var1(arg1, { {} }, var201)
end

return var6
