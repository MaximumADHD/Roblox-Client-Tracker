-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
if not require(var0.Src.Flags.getFFlagImprovePluginSpeedPivotEditor)() then
end
if require(var0.Src.Utility.DebugFlags).RunningUnderCLI() then
end
local var1 = {}
var1.plugin = plugin
var1.pluginName = "EditPivotPlugin"
var1.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var1.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var1.overrideLocaleId = nil
var1.localizationNamespace = nil
function var1.getToolbarName(arg1, arg2, arg3)
   return "Pivot"
end

local var42 = {}
function var42.getName(arg1, arg2, arg3)
   return "EditPivot"
end

function var42.getDescription(arg1, arg2, arg3)
   return ""
end

var42.icon = ""
local var52 = nil
var42.text = var52
var1.buttonInfo = var42
var52 = var1
local var4 = require(var0.PluginLoader.PluginLoaderBuilder).build(var52)
if not var4.pluginLoader:waitForUserInteraction() then
end
local var59 = script
var59 = var4
require(var59.Parent.main)(plugin, var59)
