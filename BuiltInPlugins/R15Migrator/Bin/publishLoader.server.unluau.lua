-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Src.Util.DebugFlags)
if not require(var0.Src.Util.shouldPluginRun)() then
end
if not var1.RunTests() then
   if var1.RunningUnderCLI() then
   end
end
local var2 = game:GetService("StudioPublishService")
local var3 = {}
var3.plugin = plugin
var3.pluginName = "PublishBlocked"
var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var3.overrideLocaleId = nil
var3.localizationNamespace = nil
var3.noToolbar = true
local var85 = {}
local function fun0()
   return var2.OnPublishAttempt
end

function var85.StudioPublishService.OnPublishAttempt()
   return var2.OnPublishAttempt
end

var3.extraTriggers = var85
fun0 = var3
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun0)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var94 = script
var94 = var5
require(var94.Parent.publishMain)(plugin, var94)
