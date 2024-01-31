-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Ribbon")
require(var0.Bin.Common.defineLuaFlags)
local var1 = require(var0.Packages.TestLoader)
var1.launch("Ribbon", var0.Src)
if var1.isCli() then
end
if not game:GetFastFlag("EnableRibbonPlugin") then
end
plugin.Name = var0.Name
local var2 = {}
function var2.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

function var2.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var2.icon = "rbxlocaltheme://GameSettings"
var2.enabled = true
local var3 = {}
var3.plugin = plugin
var3.pluginName = "Ribbon"
function var3.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var3.buttonInfo = var2
local var69 = {}
var69.id = "Ribbon"
var69.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
function var69.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var89 = Enum.ZIndexBehavior.Sibling
var69.zIndexBehavior = var89
var3.dockWidgetInfo = var69
var89 = var3
local var6 = require(var0.Packages.PluginLoader.PluginLoaderBuilder).build(var89)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var96 = script
var96 = var6
require(var96.Parent.main)(plugin, var96)
