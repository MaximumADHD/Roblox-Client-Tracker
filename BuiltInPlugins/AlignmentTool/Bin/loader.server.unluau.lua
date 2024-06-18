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

local var25 = {}
function var25.getName()
   return "AlignTool"
end

function var25.getDescription()
   return ""
end

var25.icon = ""
var25.text = nil
var25.clickableWhenViewportHidden = true
var1.buttonInfo = var25
local var31 = {}
var31.id = "AlignmentTool"
var31.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 300, 250, 175, 250)
function var31.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "WindowTitle")
end

local var51 = Enum.ZIndexBehavior.Sibling
var31.zIndexBehavior = var51
var1.dockWidgetInfo = var31
var51 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var51)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var65 = script
var65 = var5
require(var65.Parent.main)(plugin, var65)
