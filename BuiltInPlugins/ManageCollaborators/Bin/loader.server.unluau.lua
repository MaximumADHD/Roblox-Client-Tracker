-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:getFastFlag("ImprovePluginSpeed_ManageCollaborators") then
end
require(script.Parent.defineLuaFlags)
local var0 = script.Parent.Parent
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
local var1 = game:GetService("TeamCreateService")
local var2 = {}
var2.plugin = plugin
var2.pluginName = "ManageCollaborators"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
var2.noToolbar = true
var2.getToolbarName = nil
var2.buttonInfo = nil
var2.dockWidgetInfo = nil
local var43 = {}
local function fun0()
   return var1.ToggleManageCollaborators
end

function var43.TeamCreateService.ToggleManageCollaborators()
   return var1.ToggleManageCollaborators
end

var2.extraTriggers = var43
fun0 = var2
local var4 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun0)
var4.pluginLoader:waitForUserInteraction()
local var51 = script
var51 = var4
require(var51.Parent.main)(plugin, var51)
