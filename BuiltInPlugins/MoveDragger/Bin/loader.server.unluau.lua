-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = var0.Packages.DraggerFramework
local var2 = {}
var2.plugin = plugin
var2.pluginName = "MoveDragger"
var2.translationResourceTable = var1.Resources.LocalizedStrings
var2.fallbackResourceTable = var1.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   return "Home"
end

local var22 = {}
function var22.getName(arg1, arg2, arg3)
   return "Move"
end

function var22.getDescription(arg1, arg2, arg3)
   return "Move an Object"
end

var22.icon = ""
local var32 = nil
var22.text = var32
var2.buttonInfo = var22
var32 = var2
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var32)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var39 = script
var39 = var5
require(var39.Parent.main)(plugin, var39)
