-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
require(script.Parent.defineLuaFlags)
local var1 = require(var0.Src.Util.Constants)
local var2 = {}
var2.plugin = plugin
var2.pluginName = "PlayerEmulator"
var2.translationResourceTable = var0.Src.Resources.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName()
   return "luaPlayerEmulatorToolbar"
end

local var39 = {}
function var39.getName()
   return "luaPlayerEmulatorButton"
end

function var39.getDescription()
   return ""
end

var39.icon = "rbxlocaltheme://Player"
var39.text = nil
local var45 = game:GetService("RunService"):IsEdit()
var39.enabled = var45
var2.buttonInfo = var39
var2.dockWidgetInfo = nil
function var2.shouldImmediatelyOpen()
   return plugin:GetSetting(var1.PLUGIN_WIDGET_STATE)
end

var45 = var2
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var45)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var58 = script
var58 = var5
require(var58.Parent.main)(plugin, var58)
