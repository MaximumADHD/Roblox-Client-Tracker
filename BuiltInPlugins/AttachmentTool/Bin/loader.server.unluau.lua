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
local var2 = require(var0.Packages.PluginLoader.PluginLoaderBuilder)
local var3 = {}
function var3.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

function var3.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var3.icon = "rbxlocaltheme://GameSettings"
var3.enabled = false
local var4 = {}
var4.plugin = plugin
var4.pluginName = "AttachmentTool"
var4.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var4.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
function var4.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

var4.buttonInfo = var3
if game:GetService("RunService"):IsEdit() then
   var3.enabled = true
   local var76 = {}
   var76.id = "AttachmentTool"
   var76.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
   function var76.getDockTitle(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Name")
   end
   
   local var96 = Enum.ZIndexBehavior.Sibling
   var76.zIndexBehavior = var96
   var4.dockWidgetInfo = var76
   var96 = var4
   local var2 = var2.build(var96)
   if not var2.pluginLoader:waitForUserInteraction() then
   end
   local var103 = script
   var103 = var2
   require(var103.Parent.main)(plugin, var103)
end
var2.build(var4)
