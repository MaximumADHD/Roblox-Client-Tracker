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
var3.Commit = var5.LocalSession
var3.CraterDepth = var5.LocalPersistent
var3.CraterRadius = var5.LocalPersistent
var3.FillBottom = var5.LocalPersistent
var3.Frequency = var5.LocalPersistent
var3.Material = var5.LocalSession
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
var3.Material = var5.LocalSession
var3.MaterialLUT = var5.LocalSession
var9.Storage = {}
local var10 = {}
var10.Type = "Slider"
var10.Min = 0
var10.Max = 1
var10.ShowInput = true
var10.SnapIncrement = 0.01
function var9.Generator(arg1, arg2, arg3, arg4)
   local var0 = arg1.Localization
   local var323 = {}
   var323.Id = var3.TerrainType
   local var326 = {}
   var326.Items = var7(var0, nil, var4.TerrainType)
   var326.Type = "Select"
   var323.Schema = var326
   local var334 = {}
   var334.DataId = var3.Transform
   var334.Hidden = false
   var334.Id = var3.Position
   local var340 = {}
   var340.Type = "Vector"
   local var343 = "X"
   local var344 = "Y"
   local var345 = "Z"
   var340.Components = {}
   function var340.GetValue(arg1)
      return arg2[var3.Transform].Rotation + Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var340.GetComponents(arg1)
      local var0 = arg1.Position
      local var1 = var0.Z
      return { var0.X, var0.Y }
   end
   
   var334.Schema = var340
   var334.Value = arg2[var3.Transform]
   local var7 = {}
   var7.Id = var3.Size
   local var370 = {}
   var370.Type = "Vector"
   local var373 = "X"
   local var374 = "Y"
   local var375 = "Z"
   var370.Components = {}
   function var370.GetValue(arg1)
      return Vector3.new(arg1[1], arg1[2], arg1[3])
   end
   
   function var370.GetComponents(arg1)
      return { arg1.X, arg1.Y, arg1.Z }
   end
   
   var7.Schema = var370
   function var7.Validate(arg1)
      if 4 > arg1.X then
         if 4 > arg1.Y then
            if arg1.Z < 4 then
               return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
            end
         end
      end
      return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "Size"),
      if var6.MaxBuildRegion ^ 3 < arg1.X * arg1.Y * arg1.Z then
         return Enum.PropertyStatus.Errorvar0:getText("SelectionWarning", "SizeMax"),
      end
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
   local var460 = {}
   var460.Id = var3.Offset
   local var463 = {}
   var463.Type = "Vector"
   local var466 = "X"
   local var467 = "Y"
   var463.Components = {}
   function var463.GetValue(arg1)
      return Vector2.new(arg1[1], arg1[2])
   end
   
   function var463.GetComponents(arg1)
      return { arg1.X, arg1.Y }
   end
   
   var460.Schema = var463
   local var477 = {}
   var477.Id = var3.Seed
   local var480 = {}
   var480.Type = "Number"
   var477.Schema = var480
   var21.Children = {}
   var21.Id = var3.AdvancedNoise
   local var484 = {}
   var484.Text = ""
   var484.Type = "Label"
   var21.Schema = var484
   var21.Value = true
   local var29 = {}
   var29.Id = var3.Material
   local var491 = {}
   var491.Height = arg2[var3.Size].Y
   var491.Type = "MaterialRanges"
   var29.Schema = var491
   local var31 = {}
   var31.Id = var3.BlendingEdge
   var31.Schema = var10
   local var32 = {}
   var32.Id = var3.Commit
   var32.Layout = Enum.FillDirection.Vertical
   local var505 = {}
   var505.Label = var0:getText(var8, var3.Commit)
   var505.Type = "Button"
   var32.Schema = var505
   var32.Value = true
   local var513 = {}
   var513.Category = var8
   var513.Data = arg2
   var513.Overrides = arg4
   return var1(arg1, { {}, {}, {}, {}, {}, {}, {}, {}, {}, {} }, var513)
end

return var9
