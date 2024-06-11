-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Constants.PluginInstalledStatus)
local var208 = {}
var208.plugins = {}
local var210 = {}
function var210.SetPluginId(arg1, arg2)
   local var214 = var1.Dictionary
   var214 = arg1
   local var216 = {}
   local var0 = {}
   var0.installStatus = var2.UNKNOWN
   var0.installationMsg = ""
   var0.installProgress = 0
   var0.name = ""
   var0.description = ""
   var0.versionId = ""
   var0.created = ""
   var0.updated = ""
   arg2.pluginId = var0
   var216.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var214.join(var214, var216)
end

function var210.ClearPluginData(arg1, arg2)
   if not arg1.plugins[arg2.pluginId] then
      return arg1
   end
   local var241 = var1.Dictionary
   var241 = arg1
   local var243 = {}
   arg2.pluginId = var1.None
   var243.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var241.join(var241, var243)
end

function var210.SetPluginMetadata(arg1, arg2)
   local var258 = arg1.plugins[arg2.pluginId]
   local var262 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var265 = var1.Dictionary
   var265 = arg1
   local var267 = {}
   local var280 = {}
   var280.name = arg2.name
   var280.description = arg2.description
   var280.versionId = arg2.versionId
   var280.created = arg2.created
   var280.updated = arg2.updated
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var280)
   var267.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var265.join(var265, var267)
end

function var210.SetPluginInstallStatus(arg1, arg2)
   local var293 = arg1.plugins[arg2.pluginId]
   local var297 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var300 = var1.Dictionary
   var300 = arg1
   local var302 = {}
   local var315 = {}
   var315.installStatus = arg2.statusCode
   var315.installationMsg = arg2.message
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var315)
   var302.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var300.join(var300, var302)
end

return require(var0.Packages.Rodux).createReducer(var208, var210)
