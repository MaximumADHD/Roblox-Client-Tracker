-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.TerrainEnums).Biome
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
var2.Plains = true
var2.Mountains = true
var2.Hills = true
var2.Water = false
var2.Dunes = false
var2.Arctic = false
var2.Marsh = false
var2.Canyons = false
var2.Lavascape = false
var19.biomeSelection = {}
var19.biomeSize = 100
var19.haveCaves = true
var19.seed = "618033988"
local var50 = {}
function var50.ChangePosition(arg1, arg2)
   local var55 = var1.Dictionary
   var55 = arg1
   local var57 = {}
   var57.position = arg2.position
   return var55.join(var55, var57)
end

function var50.ChangeSize(arg1, arg2)
   local var63 = var1.Dictionary
   var63 = arg1
   local var65 = {}
   var65.size = arg2.size
   return var63.join(var63, var65)
end

function var50.SetBiomeSelection(arg1, arg2)
   local var70 = var1
   var70 = arg2.newBiomeUpdate
   local var76 = var1.Dictionary
   var76 = arg1
   local var78 = {}
   var78.biomeSelection = var70.Dictionary.join(arg1.biomeSelection, var70)
   return var76.join(var76, var78)
end

function var50.SetBiomeSize(arg1, arg2)
   local var84 = var1.Dictionary
   var84 = arg1
   local var86 = {}
   var86.biomeSize = arg2.biomeSize
   return var84.join(var84, var86)
end

function var50.SetHaveCaves(arg1, arg2)
   local var92 = var1.Dictionary
   var92 = arg1
   local var94 = {}
   var94.haveCaves = arg2.haveCaves
   return var92.join(var92, var94)
end

function var50.SetSeed(arg1, arg2)
   local var100 = var1.Dictionary
   var100 = arg1
   local var102 = {}
   var102.seed = arg2.seed
   return var100.join(var100, var102)
end

return require(var0.Packages.Rodux).createReducer(var19, var50)
