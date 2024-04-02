-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
require(script.Parent.runTests)()
if not game:GetFastFlag("EnableStyleEditor") then
end
local var0 = script.Parent.Parent
local var1 = game:DefineFastFlag("StyleEditorUITab", false)
plugin.Name = var0.Name
local var2 = require(var0.PluginLoader.PluginLoaderBuilder)
local var3 = {}
function var3.getName(arg1, arg2, arg3)
   local var40 = var1
   if var40 then
      return "StyleEditorToolbarButton"
   end
   var40 = arg2
   return arg1(var40, arg3, "Plugin", "Button")
end

function var3.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var3.icon = "rbxlocaltheme://StyleEditor"
var3.enabled = false
local var4 = {}
var4.plugin = plugin
var4.pluginName = "StyleEditor"
var4.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var4.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
function var4.getToolbarName(arg1, arg2, arg3)
   local var64 = var1
   if var64 then
      return "StyleEditor"
   end
   var64 = arg2
   return arg1(var64, arg3, "Plugin", "Toolbar")
end

var4.buttonInfo = var3
if game:GetService("RunService"):IsEdit() then
   var3.enabled = true
   local var78 = {}
   var78.id = "StyleEditor"
   var78.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Right, false, false, 580, 500, 250, 200)
   function var78.getDockTitle(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Name")
   end
   
   local var98 = Enum.ZIndexBehavior.Sibling
   var78.zIndexBehavior = var98
   var4.dockWidgetInfo = var78
   var98 = var4
   local var2 = var2.build(var98)
   if not var2.pluginLoader:waitForUserInteraction() then
   end
   local var105 = script
   var105 = var2
   require(var105.Parent.main)(plugin, var105)
end
var2.build(var4)
