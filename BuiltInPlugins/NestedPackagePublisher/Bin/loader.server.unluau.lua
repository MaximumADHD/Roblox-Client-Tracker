-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
if not require(var0.Src.Util.shouldPluginRun)() then
end
local var1 = {}
var1.plugin = plugin
var1.pluginName = "NestedPackagePublisher"
var1.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var1.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var1.overrideLocaleId = nil
var1.localizationNamespace = nil
function var1.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

local var40 = {}
function var40.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

function var40.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var40.icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
var40.text = nil
var40.clickableWhenViewportHidden = true
var1.buttonInfo = var40
local var62 = {}
var62.id = "NestedPackagePublisher"
var62.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
function var62.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var82 = Enum.ZIndexBehavior.Sibling
var62.zIndexBehavior = var82
var1.dockWidgetInfo = var62
var82 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var82)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var89 = script
var89 = var5
require(var89.Parent.main)(plugin, var89)
