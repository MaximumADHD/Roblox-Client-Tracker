-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
require(var0.Bin.Common.defineLuaFlags)
if not game:GetFastFlag("DebugAssetMgInAssetDm") then
end
if not game:GetFastFlag("EnableAssetManager") then
end
local var1 = require(var0.Packages.TestLoader)
var1.launch("AssetManager", var0.Src)
if var1.isCli() then
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
var3.pluginName = "AssetManager"
function var3.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var3.buttonInfo = var2
local var73 = {}
var73.id = "AssetManager"
var73.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
function var73.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var93 = Enum.ZIndexBehavior.Sibling
var73.zIndexBehavior = var93
var3.dockWidgetInfo = var73
var93 = var3
local var6 = require(var0.Packages.PluginLoader.PluginLoaderBuilder).build(var93)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var100 = var0.Bin
var100 = var6
require(var100.Common.main)(plugin, var100)
