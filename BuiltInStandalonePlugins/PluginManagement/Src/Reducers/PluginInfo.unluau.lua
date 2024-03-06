-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Constants.PluginInstalledStatus)
local var361 = {}
var361.plugins = {}
local var363 = {}
function var363.SetPluginId(arg1, arg2)
   local var367 = var1.Dictionary
   var367 = arg1
   local var369 = {}
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
   var369.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var367.join(var367, var369)
end

function var363.ClearPluginData(arg1, arg2)
   if not arg1.plugins[arg2.pluginId] then
      return arg1
   end
   local var394 = var1.Dictionary
   var394 = arg1
   local var396 = {}
   arg2.pluginId = var1.None
   var396.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var394.join(var394, var396)
end

function var363.SetPluginMetadata(arg1, arg2)
   local var411 = arg1.plugins[arg2.pluginId]
   local var415 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var418 = var1.Dictionary
   var418 = arg1
   local var420 = {}
   local var433 = {}
   var433.name = arg2.name
   var433.description = arg2.description
   var433.versionId = arg2.versionId
   var433.created = arg2.created
   var433.updated = arg2.updated
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var433)
   var420.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var418.join(var418, var420)
end

function var363.SetPluginInstallStatus(arg1, arg2)
   local var446 = arg1.plugins[arg2.pluginId]
   local var450 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var453 = var1.Dictionary
   var453 = arg1
   local var455 = {}
   local var468 = {}
   var468.installStatus = arg2.statusCode
   var468.installationMsg = arg2.message
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var468)
   var455.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var453.join(var453, var455)
end

return require(var0.Packages.Rodux).createReducer(var361, var363)
