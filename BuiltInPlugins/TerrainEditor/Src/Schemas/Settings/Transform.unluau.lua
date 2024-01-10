-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.TransformSettings
local var4 = var2.Storage
local var5 = var2.Categories.TransformSettings
local var6 = {}
var3.Apply = var4.LocalSession
var3.ForcePreview = var4.LocalSession
var3.LiveEdit = var4.LocalPersistent
var3.MergeEmpty = var4.LocalPersistent
var3.OperationSource = var4.LocalPersistent
var3.Position = var4.Global
var3.Size = var4.Global
var3.SnapToVoxels = var4.Global
var3.TerrainRegion = var4.Global
var3.TerrainRegionBuffer = var4.Global
var3.TerrainRegionBufferSize = var4.Global
var3.TerrainRegionBufferTransform = var4.Global
var3.TerrainRegionSize = var4.Global
var3.TerrainRegionTransform = var4.Global
var3.Transform = var4.Global
var3.TransformMode = var4.Global
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var59 = {}
   var59.Id = var3.Size
   local var62 = {}
   var62.Type = "Vector"
   local var65 = "X"
   local var66 = "Y"
   local var67 = "Z"
   var62.Components = {}
   function var62.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var62.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var59.Schema = var62
   function var59.Validate(arg1)
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
   
   local var100 = {}
   var100.DataId = var3.Transform
   var100.Id = var3.Position
   var100.Hidden = false
   local var106 = {}
   var106.Type = "Vector"
   local var109 = "X"
   local var110 = "Y"
   local var111 = "Z"
   var106.Components = {}
   function var106.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var106.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var100.Schema = var106
   var100.Value = arg2[var3.Transform]
   local var10 = {}
   var10.DataId = var3.Transform
   var10.Id = var3.Rotation
   local var138 = {}
   var138.Type = "Vector"
   local var141 = "X"
   local var142 = "Y"
   local var143 = "Z"
   var138.Components = {}
   function var138.GetValue(arg1)
      return CFrame.fromEulerAnglesXYZ(math.rad(arg1[1]), math.rad(arg1[2]), math.rad(arg1[3])) + arg2[var3.Transform].Position
   end
   
   function var138.GetComponents(arg1)
      local var0 = math.deg(arg1:ToEulerAnglesXYZ())
      local var1 = math.deg(var169)
      local var2 = math.deg(var172)
      return {}
   end
   
   var10.Schema = var138
   var10.Value = arg2[var3.Transform]
   local var15 = {}
   var15.Id = var3.MergeEmpty
   local var181 = {}
   var181.Type = "Checkbox"
   var15.Schema = var181
   local var17 = {}
   var17.Id = var3.LiveEdit
   local var186 = {}
   var186.Type = "Checkbox"
   var17.Schema = var186
   local var19 = {}
   var19.Id = var3.SnapToVoxels
   local var191 = {}
   var191.Type = "Checkbox"
   var19.Schema = var191
   local var21 = {}
   var21.Id = var3.Apply
   var21.Layout = Enum.FillDirection.Vertical
   local var22 = {}
   var22.Label = var0:getText(var5, var3.Apply)
   var22.Type = "Button"
   var21.Schema = var22
   local var204 = {}
   var204.Category = var5
   var204.Data = arg2
   var204.Overrides = arg4
   return var1(arg1, { {} }, var204)
end

return var6
