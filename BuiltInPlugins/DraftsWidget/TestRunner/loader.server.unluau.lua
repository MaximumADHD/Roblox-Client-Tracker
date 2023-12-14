-- Generated with Unluau (https://github.com/valencefun/unluau)
local var10 = game:GetService("RunService"):IsEdit()
if var10 then
   var10 = require(script.Parent.main)
   var10(plugin)
end
local var1 = script.Parent.Parent
local var2 = {}
var2.plugin = plugin
var2.pluginName = "Drafts"
var2.translationResourceTable = var1.Src.Resources.LocalizedStrings
var2.fallbackResourceTable = var1.Src.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName()
   return "draftsToolbar"
end

local var31 = {}
function var31.getName()
   return "draftsButton"
end

function var31.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Meta", "PluginButtonTooltip")
end

var31.icon = ""
var31.text = nil
local var44 = false
var31.enabled = var44
var2.buttonInfo = var31
var2.dockWidgetInfo = nil
var44 = var2
require(var1.PluginLoader.PluginLoaderBuilder).build(var44)
