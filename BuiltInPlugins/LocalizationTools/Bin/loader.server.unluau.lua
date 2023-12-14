-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.defineLuaFlags)
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
local var1 = {}
var1.plugin = plugin
var1.pluginName = "LocalizationTools"
var1.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var1.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var1.overrideLocaleId = nil
var1.localizationNamespace = nil
function var1.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "ToolbarLabel")
end

local var44 = {}
function var44.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "RibbonBarButton")
end

function var44.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "ToolTipMessage")
end

var44.icon = "rbxlocaltheme://LocalizationTools"
var44.text = nil
var44.enabled = game:GetService("RunService"):IsEdit()
var1.buttonInfo = var44
local var67 = {}
var67.id = "LocalizationTools"
var67.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 300, 250, 0, 0)
function var67.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "WindowTitle")
end

local var87 = Enum.ZIndexBehavior.Sibling
var67.zIndexBehavior = var87
var1.dockWidgetInfo = var67
var87 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var87)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var94 = script
var94 = var5
require(var94.Parent.main)(plugin, var94)
