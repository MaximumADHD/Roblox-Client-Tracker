-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
local var1 = game:GetService("StudioService")
local var2 = {}
var2.plugin = plugin
var2.pluginName = "GameSettings"
var2.translationResourceTable = var0.Src.Resources.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName()
   return "gameSettingsToolbar"
end

local var38 = {}
function var38.getName()
   return "gameSettingsButton"
end

function var38.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "General", "PluginDescription")
end

var38.icon = "rbxlocaltheme://GameSettings"
var38.text = nil
var38.clickableWhenViewportHidden = true
var38.enabled = game:GetService("RunService"):IsEdit()
var2.buttonInfo = var38
var2.dockWidgetInfo = nil
local var55 = {}
local function fun3()
   return var1.OnOpenGameSettings
end

function var55.StudioService.OnOpenGameSettings()
   return var1.OnOpenGameSettings
end

var2.extraTriggers = var55
fun3 = var2
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun3)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var64 = script
var64 = var5
require(var64.Parent.main)(plugin, var64)
