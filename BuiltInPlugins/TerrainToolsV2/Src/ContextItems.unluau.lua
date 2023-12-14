-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Packages.Framework).ContextServices.ContextItem
local var1 = script.Parent.TerrainInterfaces
local var2 = {}
local var14 = {}
function var14.getValues(arg1)
   return arg1.values
end

function var14.getChangedSignal(arg1)
   return arg1.valuesChanged
end

function var14.destroy(arg1)
   arg1:destroy()
end

var2.DEPRECATED_Theme = var0:createSimple("DEPRECATED_Theme", var14)
var2.Terrain = var0:createSimple("Terrain")
var2.PluginActivationController = require(script.Parent.Util.PluginActivationController)
var2.PluginActionsController = require(script.Parent.Util.PluginActionsController)
var2.TerrainGeneration = require(var1.TerrainGenerationInstance)
var2.TerrainImporter = require(var1.TerrainImporterInstance)
var2.SeaLevel = require(var1.TerrainSeaLevel)
var2.ImageLoader = require(script.Parent.Util.ImageLoader)
var2.CalloutController = require(script.Parent.Util.CalloutController)
var2.ShorelineController = require(script.Parent.Util.ShorelineController)
var2.SmoothVoxelsController = require(script.Parent.Util.SmoothVoxelsController)
return var2
