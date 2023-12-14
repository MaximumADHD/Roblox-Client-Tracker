-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.defineLuaFlags)
local var1 = require(var0.Packages.TestLoader)
var1.launch("MaterialGenerator", var0.Src)
if var1.isCli() then
end
if not game:GetFastFlag("EnableMaterialGenerator") then
end
if not require(var0.Src.Flags.getFFlagImprovePluginSpeedMaterialGenerator)() then
end
local var2 = {}
var2.plugin = plugin
var2.pluginName = "MaterialGenerator"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   return "MaterialGenerator"
end

local var48 = {}
function var48.getName(arg1, arg2, arg3)
   return "MaterialGenerator"
end

function var48.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var48.icon = ""
var48.text = nil
var2.buttonInfo = var48
local var64 = {}
var64.id = "MaterialGenerator"
var64.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 640, 480, 250, 200)
function var64.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var84 = Enum.ZIndexBehavior.Sibling
var64.zIndexBehavior = var84
var2.dockWidgetInfo = var64
var84 = var2
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var84)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var91 = script
var91 = var6
require(var91.Parent.main)(plugin, var91)
