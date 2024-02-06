-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.SeaLevelSettings
local var4 = var2.Storage
local var5 = require(var0.Src.Resources.Constants)
local var6 = var2.Category.SeaLevelSettings
local var7 = {}
var3.Evaporate = var4.LocalSession
var3.Create = var4.LocalSession
var3.Size = var4.LocalPersistent
var3.SnapToVoxels = var4.LocalPersistent
var3.Transform = var4.LocalPersistent
var7.Storage = {}
function var7.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var135 = {}
   var135.Id = var3.Size
   local var138 = {}
   var138.Type = "Vector"
   local var141 = "X"
   local var142 = "Y"
   local var143 = "Z"
   var138.Components = {}
   function var138.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var138.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var135.Schema = var138
   function var135.Validate(arg1)
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
   
   var135.Value = arg2[var3.Size]
   local var200 = {}
   var200.DataId = var3.Transform
   var200.Hidden = false
   var200.Id = var3.Position
   local var206 = {}
   var206.Type = "Vector"
   local var209 = "X"
   local var210 = "Y"
   local var211 = "Z"
   var206.Components = {}
   function var206.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var206.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var200.Schema = var206
   var200.Value = arg2[var3.Transform]
   local var10 = {}
   var10.Id = var3.SnapToVoxels
   local var236 = {}
   var236.Type = "Checkbox"
   var10.Schema = var236
   local var12 = {}
   var12.Id = var3.Evaporate
   local var241 = {}
   var241.Label = var0:getText(var6, var3.Evaporate)
   var241.Type = "Button"
   var12.Schema = var241
   local var14 = {}
   var14.Id = var3.Create
   local var15 = {}
   var15.Label = var0:getText(var6, var3.Create)
   var15.Type = "Button"
   var14.Schema = var15
   local var258 = {}
   var258.Category = var6
   var258.Data = arg2
   var258.Overrides = arg4
   return var1(arg1, {}, var258)
end

return var7
