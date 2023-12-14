-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.Parent.TestRunner.defineLuaFlags)
local var0 = script.Parent.Parent
local var1 = game:GetService("StudioPublishService")
local var2 = {}
var2.plugin = plugin
var2.pluginName = "PublishPlaceAs"
var2.translationResourceTable = var0.Src.Resources.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
var2.noToolbar = true
local var29 = {}
function var29.StudioPublishService.GamePublishFinished()
   return var1.GamePublishFinished
end

function var29.StudioPublishService.GamePublishCancelled()
   return var1.GamePublishCancelled
end

local function fun2()
   return var1.OnSaveOrPublishPlaceToRoblox
end

function var29.StudioPublishService.OnSaveOrPublishPlaceToRoblox()
   return var1.OnSaveOrPublishPlaceToRoblox
end

var2.extraTriggers = var29
fun2 = var2
local var4 = require(var0.PluginLoader.PluginLoaderBuilder).build(fun2)
if not var4.pluginLoader:waitForUserInteraction() then
end
local var44 = script.Parent.Parent
var44 = var4
require(var44.Src.main)(plugin, var44)
