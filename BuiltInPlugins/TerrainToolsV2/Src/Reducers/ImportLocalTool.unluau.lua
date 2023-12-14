-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var19 = {}
local var20 = {}
var20.X = 0
var20.Y = 0
var20.Z = 0
var19.position = var20
local var24 = {}
var24.X = 1024
var24.Y = 512
var24.Z = 1024
var19.size = var24
var19.heightmap = {}
var19.colormap = {}
var19.colormapWarningId = nil
var19.defaultMaterial = Enum.Material.Asphalt
var19.materialMode = require(var0.Src.Util.TerrainEnums).ImportMaterialMode.DefaultMaterial
var19.sizeChangedByUser = false
local var34 = {}
function var34.ChangePosition(arg1, arg2)
   local var39 = var1.Dictionary
   var39 = arg1
   local var41 = {}
   var41.position = arg2.position
   return var39.join(var39, var41)
end

function var34.ChangeSize(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
   var49.size = arg2.size
   return var47.join(var47, var49)
end

function var34.SetImportMaterialMode(arg1, arg2)
   local var54 = var1.Dictionary
   var54 = arg1
   local var56 = {}
   var56.materialMode = arg2.materialMode
   return var54.join(var54, var56)
end

function var34.SelectHeightmap(arg1, arg2)
   local var62 = var1.Dictionary
   var62 = arg1
   local var64 = {}
   var64.heightmap = arg2.heightmap or {}
   return var62.join(var62, var64)
end

function var34.SelectColormap(arg1, arg2)
   local var72 = var1.Dictionary
   var72 = arg1
   local var74 = {}
   var74.colormap = arg2.colormap or {}
   return var72.join(var72, var74)
end

function var34.SetColormapWarningId(arg1, arg2)
   local var82 = var1.Dictionary
   var82 = arg1
   local var84 = {}
   var84.colormapWarningId = arg2.colormapWarningId or var1.None
   return var82.join(var82, var84)
end

function var34.SetDefaultMaterial(arg1, arg2)
   local var93 = var1.Dictionary
   var93 = arg1
   local var95 = {}
   var95.defaultMaterial = arg2.defaultMaterial
   return var93.join(var93, var95)
end

function var34.SetSizeChangedByUser(arg1, arg2)
   local var101 = var1.Dictionary
   var101 = arg1
   local var103 = {}
   var103.sizeChangedByUser = arg2.sizeChangedByUser
   return var101.join(var101, var103)
end

return require(var0.Packages.Rodux).createReducer(var19, var34)
