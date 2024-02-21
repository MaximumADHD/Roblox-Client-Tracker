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

local var1 = {}
function var1.getName()
   return "AlignTool"
end

function var1.getDescription()
   return ""
end

var1.icon = ""
var1.text = nil
var1.clickableWhenViewportHidden = true
var1.buttonInfo = var1
local var7 = {}
var7.id = "AlignmentTool"
var7.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 300, 250, 175, 250)
function var7.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "WindowTitle")
end

local var27 = Enum.ZIndexBehavior.Sibling
var7.zIndexBehavior = var27
var1.dockWidgetInfo = var7
var27 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var27)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var34 = script
var34 = var5
require(var34.Parent.main)(plugin, var34)
