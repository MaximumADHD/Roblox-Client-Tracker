-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.SeaLevelSettings
local var4 = var2.Storage
local var5 = var2.Category.SeaLevelSettings
local var6 = {}
var3.Evaporate = var4.LocalSession
var3.Create = var4.LocalSession
var3.Size = var4.LocalPersistent
var3.SnapToVoxels = var4.LocalPersistent
var3.Transform = var4.LocalPersistent
var6.Storage = {}
function var6.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var130 = {}
   var130.Id = var3.Size
   local var133 = {}
   var133.Type = "Vector"
   local var136 = "X"
   local var137 = "Y"
   local var138 = "Z"
   var133.Components = {}
   function var133.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var133.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var130.Schema = var133
   function var130.Validate(arg1)
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
   
   var130.Value = arg2[var3.Size]
   local var174 = {}
   var174.DataId = var3.Transform
   var174.Hidden = false
   var174.Id = var3.Position
   local var180 = {}
   var180.Type = "Vector"
   local var183 = "X"
   local var184 = "Y"
   local var185 = "Z"
   var180.Components = {}
   function var180.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var180.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var174.Schema = var180
   var174.Value = arg2[var3.Transform]
   local var10 = {}
   var10.Id = var3.SnapToVoxels
   local var210 = {}
   var210.Type = "Checkbox"
   var10.Schema = var210
   local var12 = {}
   var12.Id = var3.Evaporate
   local var215 = {}
   var215.Label = var0:getText(var5, var3.Evaporate)
   var215.Type = "Button"
   var12.Schema = var215
   local var14 = {}
   var14.Id = var3.Create
   local var15 = {}
   var15.Label = var0:getText(var5, var3.Create)
   var15.Type = "Button"
   var14.Schema = var15
   local var232 = {}
   var232.Category = var5
   var232.Data = arg2
   var232.Overrides = arg4
   return var1(arg1, {}, var232)
end

return var6
