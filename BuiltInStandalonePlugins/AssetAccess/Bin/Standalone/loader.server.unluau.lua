-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
require(var0.Bin.Common.defineLuaFlags)
if not require(var0.Src.SharedFlags.getFFlagAssetAccessErrorMessageImprovements)() then
end
local var1 = require(var0.Packages.TestLoader)
var1.launch("AssetAccess", var0.Src)
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
var3.pluginName = "AssetAccess"
function var3.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var3.buttonInfo = var2
local var72 = {}
var72.id = "AssetAccess"
var72.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
function var72.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var92 = Enum.ZIndexBehavior.Sibling
var72.zIndexBehavior = var92
var3.dockWidgetInfo = var72
var92 = var3
local var6 = require(var0.Packages.PluginLoader.PluginLoaderBuilder).build(var92)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var99 = script
var99 = var6
require(var99.Parent.main)(plugin, var99)
