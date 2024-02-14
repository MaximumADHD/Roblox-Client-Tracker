-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
local var1 = {}
var1.plugin = plugin
var1.pluginName = "AlignmentTool"
var1.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var1.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var1.overrideLocaleId = nil
var1.localizationNamespace = nil
function var1.getToolbarName()
   return "Alignment"
end

local var66 = {}
function var66.getName()
   return "AlignTool"
end

function var66.getDescription()
   return ""
end

var66.icon = ""
var66.text = nil
var66.clickableWhenViewportHidden = true
var1.buttonInfo = var66
local var72 = {}
var72.id = "AlignmentTool"
var72.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 300, 250, 175, 250)
function var72.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "WindowTitle")
end

local var92 = Enum.ZIndexBehavior.Sibling
var72.zIndexBehavior = var92
var1.dockWidgetInfo = var72
var92 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var92)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var99 = script
var99 = var5
require(var99.Parent.main)(plugin, var99)
