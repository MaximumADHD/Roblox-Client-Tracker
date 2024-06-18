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
local var141 = {}
var141.id = "AssetManager"
var141.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
function var141.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var161 = Enum.ZIndexBehavior.Sibling
var141.zIndexBehavior = var161
var3.dockWidgetInfo = var141
var161 = var3
local var6 = require(var0.Packages.PluginLoader.PluginLoaderBuilder).build(var161)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var168 = var0.Bin
var168 = var6
require(var168.Common.main)(plugin, var168)
