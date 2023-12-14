-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetFastFlag("ImprovePluginSpeed_RigGenerator") then
end
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.TestLoader)
var1.launch("RigGenerator", var0.Src)
if var1.isCli() then
end
local var2 = {}
var2.plugin = plugin
var2.pluginName = "RigGenerator"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   return "Rig Generator"
end

local var37 = {}
function var37.getName(arg1, arg2, arg3)
   return "Generate Rig"
end

function var37.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var37.icon = "rbxlocaltheme://BuildRig"
local var52 = nil
var37.text = var52
var2.buttonInfo = var37
var52 = var2
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var52)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var59 = script
var59 = var5
require(var59.Parent.main)(plugin, var59)
