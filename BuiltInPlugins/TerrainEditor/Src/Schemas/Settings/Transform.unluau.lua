-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.TransformSettings
local var4 = var2.Storage
local var5 = require(var0.Src.Resources.Constants)
local var6 = var2.Category.TransformSettings
local var7 = {}
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
var7.Storage = {}
function var7.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var64 = {}
   var64.Id = var3.Size
   local var67 = {}
   var67.Type = "Vector"
   local var70 = "X"
   local var71 = "Y"
   local var72 = "Z"
   var67.Components = {}
   function var67.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var67.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var64.Schema = var67
   function var64.Validate(arg1)
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
   
   local var126 = {}
   var126.DataId = var3.Transform
   var126.Id = var3.Position
   var126.Hidden = false
   local var132 = {}
   var132.Type = "Vector"
   local var135 = "X"
   local var136 = "Y"
   local var137 = "Z"
   var132.Components = {}
   function var132.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var132.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var126.Schema = var132
   var126.Value = arg2[var3.Transform]
   local var10 = {}
   var10.DataId = var3.Transform
   var10.Id = var3.Rotation
   local var164 = {}
   var164.Type = "Vector"
   local var167 = "X"
   local var168 = "Y"
   local var169 = "Z"
   var164.Components = {}
   function var164.GetValue(arg1)
      return CFrame.fromEulerAnglesXYZ(math.rad(arg1[1]), math.rad(arg1[2]), math.rad(arg1[3])) + arg2[var3.Transform].Position
   end
   
   function var164.GetComponents(arg1)
      local var0 = math.deg(arg1:ToEulerAnglesXYZ())
      local var1 = math.deg(var195)
      local var2 = math.deg(var198)
      return {}
   end
   
   var10.Schema = var164
   var10.Value = arg2[var3.Transform]
   local var15 = {}
   var15.Id = var3.MergeEmpty
   local var207 = {}
   var207.Type = "Checkbox"
   var15.Schema = var207
   local var17 = {}
   var17.Id = var3.LiveEdit
   local var212 = {}
   var212.Type = "Checkbox"
   var17.Schema = var212
   local var19 = {}
   var19.Id = var3.SnapToVoxels
   local var217 = {}
   var217.Type = "Checkbox"
   var19.Schema = var217
   local var21 = {}
   var21.Id = var3.Apply
   var21.Layout = Enum.FillDirection.Vertical
   local var22 = {}
   var22.Label = var0:getText(var6, var3.Apply)
   var22.Type = "Button"
   var21.Schema = var22
   local var230 = {}
   var230.Category = var6
   var230.Data = arg2
   var230.Overrides = arg4
   return var1(arg1, { {} }, var230)
end

return var7
