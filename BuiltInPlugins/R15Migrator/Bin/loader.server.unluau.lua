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
local var78 = var0.Src.Util
local var3 = game:GetService("StudioPublishService")
var78 = require(var78.checkPublishLock)
var78()
local var4 = {}
var4.plugin = plugin
var4.pluginName = "R15Migrator"
var4.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var4.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var4.overrideLocaleId = nil
var4.localizationNamespace = nil
function var4.getToolbarName(arg1, arg2, arg3)
   return "AvatarUnification"
end

local var94 = {}
function var94.getName(arg1, arg2, arg3)
   return "r15_migration_button"
end

function var94.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var94.icon = "http://www.roblox.com/asset/?id=12399871436"
var94.text = nil
var4.buttonInfo = var94
local var110 = {}
var110.id = "R15Migrator"
var110.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, true, 508, 640, 508, 640)
function var110.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

var110.name = "R15Migrator"
var110.zIndexBehavior = Enum.ZIndexBehavior.Sibling
var4.dockWidgetInfo = var110
local var132 = {}
local function fun4()
   return var3.OnPublishAttempt
end

function var132.StudioPublishService.OnPublishAttempt()
   return var3.OnPublishAttempt
end

var4.extraTriggers = var132
fun4 = var4
local var8 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun4)
if not var8.pluginLoader:waitForUserInteraction() then
end
local var141 = script
var141 = var8
require(var141.Parent.main)(plugin, var141)
