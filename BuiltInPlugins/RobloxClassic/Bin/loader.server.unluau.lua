-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetFastFlag("ImprovePluginSpeed_RobloxClassic") then
end
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not require(var0.Src.Util.shouldPluginRun)() then
end
if not var1.RunTests() then
   if var1.RunningUnderCLI() then
   end
end
local var2 = {}
var2.plugin = plugin
var2.pluginName = "RobloxClassic"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   return "AvatarUnification"
end

local var44 = {}
function var44.getName(arg1, arg2, arg3)
   return "RobloxClassicButton"
end

function var44.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var44.icon = "rbxasset://textures/AnimationEditor/rigbuilder_blue.png"
var44.text = nil
var2.buttonInfo = var44
local var60 = {}
var60.id = "RobloxClassic"
var60.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, true, 640, 480, 250, 200)
function var60.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

var60.name = "RobloxClassic"
local var81 = Enum.ZIndexBehavior.Sibling
var60.zIndexBehavior = var81
var2.dockWidgetInfo = var60
var81 = var2
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var81)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var88 = script
var88 = var6
require(var88.Parent.main)(plugin, var88)
