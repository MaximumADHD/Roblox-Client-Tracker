-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
local var1 = require(var0.Src.Util.Constants)
local var2 = {}
var2.plugin = plugin
var2.pluginName = "TerrainToolsV2"
var2.translationResourceTable = var0.Src.Resources.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName()
   return "TerrainToolsLuaToolbarName"
end

local var35 = {}
function var35.getName()
   return "Editor"
end

function var35.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Main", "PluginButtonEditorTooltip")
end

var35.icon = "rbxlocaltheme://TerrainEditor"
var35.text = nil
var35.clickableWhenViewportHidden = true
var2.buttonInfo = var35
local var49 = {}
var49.id = "TerrainTools"
var49.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, true, false, 300, 600, var1.MIN_WIDGET_SIZE.X, var1.MIN_WIDGET_SIZE.Y)
function var49.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Main", "Title")
end

var49.zIndexBehavior = Enum.ZIndexBehavior.Sibling
var2.dockWidgetInfo = var49
local var75 = game:GetFastFlag("Shorelines_Tooling")
if not var75 then
   if game:GetFastFlag("SmoothVoxels_Tooling") then
      local function fun0()
         return true
      end
      
   else
      local var0 = nil
   end
end
local function fun5()
   return true
end

var2.shouldImmediatelyOpen = nil
var75 = var2
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var75)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var90 = script
var90 = var6
require(var90.Parent.main)(plugin, var90)
