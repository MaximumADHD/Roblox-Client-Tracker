-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not require(var0.Src.Util.shouldPluginRun)() then
end
if game:GetFastFlag("RemoveR15MigratorFinalizer") then
end
if not var1.RunTests() then
   if var1.RunningUnderCLI() then
   end
end
local var2 = {}
var2.plugin = plugin
var2.pluginName = "R15Migrator"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   return "AvatarUnification"
end

local var44 = {}
function var44.getName(arg1, arg2, arg3)
   return "r15_migration_finalizer_button"
end

function var44.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Finalizer", "Description")
end

var44.icon = "http://www.roblox.com/asset/?id=12399871436"
var44.text = nil
var2.buttonInfo = var44
local var60 = {}
var60.id = "R15MigratorFinalizer"
var60.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, true, 508, 640, 508, 640)
function var60.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Finalizer", "Name")
end

var60.name = "R15MigratorFinalizer"
local var81 = Enum.ZIndexBehavior.Sibling
var60.zIndexBehavior = var81
var2.dockWidgetInfo = var60
var81 = var2
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var81)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var88 = script
var88 = var6
require(var88.Parent.finalizerMain)(plugin, var88)
