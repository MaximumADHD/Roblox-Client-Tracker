-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent
require(var1.Packages.TestLoader).launch("TerrainEditor", var1.Src)
if not require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
   if not game:GetFastFlag("EnableTerrainEditor2") then
   end
end
local var2 = {}
var2.plugin = plugin
var2.pluginName = "TerrainEditor"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName()
   return "TerrainEditorLuaToolbarName"
end

local var234 = {}
function var234.getName()
   return "Editor"
end

function var234.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Main", "PluginButtonEditorTooltip")
end

var234.icon = "rbxlocaltheme://TerrainEditor"
var234.text = nil
var234.clickableWhenViewportHidden = true
var2.buttonInfo = var234
local var248 = {}
var248.id = "TerrainEditor"
var248.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, true, false, 320, 600, 320, 200)
function var248.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Main", "Title")
end

local var268 = Enum.ZIndexBehavior.Sibling
var248.zIndexBehavior = var268
var2.dockWidgetInfo = var248
var268 = var2
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var268)
if not var6.pluginLoader:waitForUserInteraction() then
end
require(script.Parent.main)(plugin, var6)
