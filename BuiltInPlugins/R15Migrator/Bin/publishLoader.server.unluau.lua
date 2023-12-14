-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
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
local var228 = {}
local function fun4()
   return var2.OnPublishAttempt
end

function var228.StudioPublishService.OnPublishAttempt()
   return var2.OnPublishAttempt
end

var3.extraTriggers = var228
fun4 = var3
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun4)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var237 = script
var237 = var5
require(var237.Parent.publishMain)(plugin, var237)
