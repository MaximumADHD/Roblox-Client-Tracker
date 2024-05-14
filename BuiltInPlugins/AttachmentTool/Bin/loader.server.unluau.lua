-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
if not game:GetFastFlag("EnableAttachmentToolLuaPlugin") then
end
local var0 = script:FindFirstAncestor("AttachmentTool")
local var1 = require(var0.Packages.TestLoader)
var1.launch("AttachmentTool", var0.Src)
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
var2.enabled = false
local var3 = {}
var3.plugin = plugin
var3.pluginName = "AttachmentTool"
var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
function var3.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

var3.buttonInfo = var2
var2.enabled = true
local var4 = require(var0.Packages.PluginLoader.PluginLoaderBuilder).build(var3)
if not var4.pluginLoader:waitForUserInteraction() then
end
local var77 = script
var77 = var4
require(var77.Parent.main)(plugin, var77)
