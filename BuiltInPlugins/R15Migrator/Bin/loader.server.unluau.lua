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
local var83 = var0.Src.Util
local var3 = require(var83.PluginSettings)
local var4 = game:GetService("StudioPublishService")
var83 = require(var0.Src.Util.checkPublishLock)
var83()
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

local var99 = {}
function var99.getName(arg1, arg2, arg3)
   return "r15_migration_button"
end

function var99.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var99.icon = "http://www.roblox.com/asset/?id=12399871436"
var99.text = nil
var5.buttonInfo = var99
local var115 = {}
var115.id = "R15Migrator"
var115.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, var3.InitiallyEnabled:getBooleanSetting(plugin, game.GameId), true, 508, 640, 508, 640)
function var115.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

var115.name = "R15Migrator"
var115.zIndexBehavior = Enum.ZIndexBehavior.Sibling
var5.dockWidgetInfo = var115
local var142 = {}
local function fun4()
   return var4.OnPublishAttempt
end

function var142.StudioPublishService.OnPublishAttempt()
   return var4.OnPublishAttempt
end

var5.extraTriggers = var142
var3.InitiallyEnabled:setSetting(plugin, game.GameId, nil)
fun4 = var5
local var9 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun4)
if not var9.pluginLoader:waitForUserInteraction() then
end
local var157 = script
var157 = var9
require(var157.Parent.main)(plugin, var157)
