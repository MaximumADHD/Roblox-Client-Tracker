-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Constants.PluginInstalledStatus)
local var41 = {}
var41.plugins = {}
local var43 = {}
function var43.SetPluginId(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
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
   var49.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var47.join(var47, var49)
end

function var43.ClearPluginData(arg1, arg2)
   if not arg1.plugins[arg2.pluginId] then
      return arg1
   end
   local var74 = var1.Dictionary
   var74 = arg1
   local var76 = {}
   arg2.pluginId = var1.None
   var76.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var74.join(var74, var76)
end

function var43.SetPluginMetadata(arg1, arg2)
   local var91 = arg1.plugins[arg2.pluginId]
   local var95 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var98 = var1.Dictionary
   var98 = arg1
   local var100 = {}
   local var113 = {}
   var113.name = arg2.name
   var113.description = arg2.description
   var113.versionId = arg2.versionId
   var113.created = arg2.created
   var113.updated = arg2.updated
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var113)
   var100.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var98.join(var98, var100)
end

function var43.SetPluginInstallStatus(arg1, arg2)
   local var126 = arg1.plugins[arg2.pluginId]
   local var130 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var133 = var1.Dictionary
   var133 = arg1
   local var135 = {}
   local var148 = {}
   var148.installStatus = arg2.statusCode
   var148.installationMsg = arg2.message
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var148)
   var135.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var133.join(var133, var135)
end

return require(var0.Packages.Rodux).createReducer(var41, var43)
