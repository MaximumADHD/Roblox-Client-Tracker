-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetFastFlag("ImprovePluginSpeed_R15Migrator") then
end
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Src.Util.DebugFlags)
if not require(var0.Src.Util.shouldPluginRun)() then
end
if not var1.RunTests() then
   if var1.RunningUnderCLI() then
   end
end
local var43 = var0.Src.Util
local var3 = require(var43.PluginSettings)
local var4 = game:GetService("StudioPublishService")
var43 = require(var0.Src.Util.checkPublishLock)
var43()
local var5 = {}
var5.plugin = plugin
var5.pluginName = "R15Migrator"
var5.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var5.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var5.overrideLocaleId = nil
var5.localizationNamespace = nil
function var5.getToolbarName(arg1, arg2, arg3)
   return "AvatarUnification"
end

local var59 = {}
function var59.getName(arg1, arg2, arg3)
   return "r15_migration_button"
end

function var59.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var59.icon = "http://www.roblox.com/asset/?id=12399871436"
var59.text = nil
var5.buttonInfo = var59
local var75 = {}
var75.id = "R15Migrator"
var75.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, var3.InitiallyEnabled:getBooleanSetting(plugin, game.GameId), true, 508, 640, 508, 640)
function var75.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

var75.name = "R15Migrator"
var75.zIndexBehavior = Enum.ZIndexBehavior.Sibling
var5.dockWidgetInfo = var75
local var102 = {}
local function fun4()
   return var4.OnPublishAttempt
end

function var102.StudioPublishService.OnPublishAttempt()
   return var4.OnPublishAttempt
end

var5.extraTriggers = var102
var3.InitiallyEnabled:setSetting(plugin, game.GameId, nil)
fun4 = var5
local var9 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun4)
if not var9.pluginLoader:waitForUserInteraction() then
end
local var117 = script
var117 = var9
require(var117.Parent.main)(plugin, var117)
