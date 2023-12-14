-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = var0.Packages.DraggerFramework
if not require(var1.Flags.getFFlagImprovePluginSpeedRotateDragger)() then
end
local var2 = {}
var2.plugin = plugin
var2.pluginName = "RotateDragger"
var2.translationResourceTable = var1.Resources.LocalizedStrings
var2.fallbackResourceTable = var1.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   return "Home"
end

local var28 = {}
function var28.getName(arg1, arg2, arg3)
   return "Rotate"
end

function var28.getDescription(arg1, arg2, arg3)
   return "Rotate an Object"
end

var28.icon = ""
local var38 = nil
var28.text = var38
var2.buttonInfo = var28
var38 = var2
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var38)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var45 = script
var45 = var5
require(var45.Parent.main)(plugin, var45)
