-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Util.ApplyById)
local var2 = require(var0.Src.Types)
local var3 = var2.BuildSettings
local var4 = var2.EnumType
local var5 = var2.Storage
local var6 = require(var0.Src.Resources.Constants)
local var7 = require(var0.Src.Util.getItems)
local var8 = var2.Category.BuildSettings
local var9 = {}
var3.AdvancedNoise = var5.LocalPersistent
var3.Amplitude = var5.LocalPersistent
var3.BankSize = var5.LocalPersistent
var3.BlendingEdge = var5.LocalPersistent
var3.CraterDepth = var5.LocalPersistent
var3.CraterRadius = var5.LocalPersistent
var3.Material = var5.LocalSession
var3.FillBottom = var5.LocalPersistent
var3.Frequency = var5.LocalPersistent
var3.Offset = var5.LocalPersistent
var3.Position = var5.LocalPersistent
var3.RimHeight = var5.LocalPersistent
var3.Seed = var5.LocalPersistent
var3.Size = var5.LocalPersistent
var3.SnapToVoxels = var5.LocalSession
var3.TerrainType = var5.Global
var3.TopRadius = var5.LocalPersistent
var3.Transform = var5.LocalPersistent
var3.WaterLevel = var5.LocalPersistent
var9.Storage = {}
local var10 = {}
var10.Type = "Slider"
var10.Min = 0
var10.Max = 1
var10.ShowInput = true
var10.SnapIncrement = 0.01
function var9.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var356 = {}
   var356.Id = var3.TerrainType
   local var359 = {}
   var359.Items = var7(var0, nil, var4.TerrainType)
   var359.Type = "Select"
   var356.Schema = var359
   local var367 = {}
   var367.DataId = var3.Transform
   var367.Hidden = false
   var367.Id = var3.Position
   local var373 = {}
   var373.Type = "Vector"
   local var376 = "X"
   local var377 = "Y"
   local var378 = "Z"
   var373.Components = {}
   function var373.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var373.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var367.Schema = var373
   var367.Value = arg2[var3.Transform]
   local var7 = {}
   var7.Id = var3.Size
   local var403 = {}
   var403.Type = "Vector"
   local var406 = "X"
   local var407 = "Y"
   local var408 = "Z"
   var403.Components = {}
   function var403.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var403.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var7.Schema = var403
   function var7.Validate(arg1)
      if 4 > arg1.X then
         if 4 > arg1.Y then
            if arg1.Z < 4 then
               return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
            end
         end
      end
      return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
      if arg1.X > var6.MaxBuildRegion then
         if arg1.Y > var6.MaxBuildRegion then
            if var6.MaxBuildRegion < arg1.Z then
               return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "SizeMax"),
            end
         end
      end
      return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "SizeMax"),
      return Enum.PropertyStatus.Ok"",
   end
   
   local var12 = {}
   var12.Id = var3.CraterDepth
   var12.Schema = var10
   local var13 = {}
   var13.Id = var3.CraterRadius
   var13.Schema = var10
   local var14 = {}
   var14.Id = var3.TopRadius
   var14.Schema = var10
   local var15 = {}
   var15.Id = var3.FillBottom
   var15.Schema = var10
   local var16 = {}
   var16.Id = var3.WaterLevel
   var16.Schema = var10
   local var17 = {}
   var17.Id = var3.BankSize
   var17.Schema = var10
   local var18 = {}
   var18.Id = var3.RimHeight
   var18.Schema = var10
   local var19 = {}
   var19.Id = var3.Frequency
   var19.Schema = var10
   local var20 = {}
   var20.Id = var3.Amplitude
   var20.Schema = var10
   local var21 = {}
   local var500 = {}
   var500.Id = var3.Offset
   local var503 = {}
   var503.Type = "Vector"
   local var506 = "X"
   local var25 = "Y"
   var503.Components = {}
   function var503.GetValue(arg1)
      return Vector2.new(arg1[1], arg1[2])
   end
   
   function var503.GetComponents(arg1)
      return { arg1.X, arg1.Y }
   end
   
   var500.Schema = var503
   local var517 = {}
   var517.Id = var3.Seed
   local var27 = {}
   var27.Type = "Number"
   var517.Schema = var27
   var21.Children = {}
   var21.Id = var3.AdvancedNoise
   local var524 = {}
   var524.Text = ""
   var524.Type = "Label"
   var21.Schema = var524
   var21.Value = true
   local var29 = {}
   var29.Id = var3.BlendingEdge
   var29.Schema = var10
   local var532 = {}
   var532.Category = var8
   var532.Data = arg2
   var532.Overrides = arg4
   return var1(arg1, { {}, {}, {}, {}, {}, {}, {}, {} }, var532)
end

return var9
