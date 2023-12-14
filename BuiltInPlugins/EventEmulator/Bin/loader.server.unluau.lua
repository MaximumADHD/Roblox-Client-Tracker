-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetService("StudioService"):HasInternalPermission() then
end
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
local var1 = {}
var1.plugin = plugin
var1.pluginName = "EventEmulator"
var1.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var1.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var1.overrideLocaleId = nil
var1.localizationNamespace = nil
function var1.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

local var39 = {}
function var39.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

function var39.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var39.icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
var39.text = nil
var39.clickableWhenViewportHidden = true
var1.buttonInfo = var39
local var61 = {}
var61.id = "EventEmulator"
var61.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 310, 225, 310, 225)
function var61.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var81 = Enum.ZIndexBehavior.Sibling
var61.zIndexBehavior = var81
var1.dockWidgetInfo = var61
var81 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var81)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var88 = script
var88 = var5
require(var88.Parent.main)(plugin, var88)
