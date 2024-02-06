-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
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

local var45 = {}
function var45.getName(arg1, arg2, arg3)
   return "r15_migration_finalizer_button"
end

function var45.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Finalizer", "Description")
end

var45.icon = "http://www.roblox.com/asset/?id=12399871436"
var45.text = nil
var2.buttonInfo = var45
local var61 = {}
var61.id = "R15MigratorFinalizer"
var61.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, true, 508, 640, 508, 640)
function var61.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Finalizer", "Name")
end

var61.name = "R15MigratorFinalizer"
local var82 = Enum.ZIndexBehavior.Sibling
var61.zIndexBehavior = var82
var2.dockWidgetInfo = var61
var82 = var2
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var82)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var89 = script
var89 = var6
require(var89.Parent.finalizerMain)(plugin, var89)
