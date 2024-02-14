-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Constants.PluginInstalledStatus)
local var71 = {}
var71.plugins = {}
local var73 = {}
function var73.SetPluginId(arg1, arg2)
   local var77 = var1.Dictionary
   var77 = arg1
   local var79 = {}
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
   var79.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var77.join(var77, var79)
end

function var73.ClearPluginData(arg1, arg2)
   if not arg1.plugins[arg2.pluginId] then
      return arg1
   end
   local var104 = var1.Dictionary
   var104 = arg1
   local var106 = {}
   arg2.pluginId = var1.None
   var106.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var104.join(var104, var106)
end

function var73.SetPluginMetadata(arg1, arg2)
   local var121 = arg1.plugins[arg2.pluginId]
   local var125 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var128 = var1.Dictionary
   var128 = arg1
   local var130 = {}
   local var143 = {}
   var143.name = arg2.name
   var143.description = arg2.description
   var143.versionId = arg2.versionId
   var143.created = arg2.created
   var143.updated = arg2.updated
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var143)
   var130.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var128.join(var128, var130)
end

function var73.SetPluginInstallStatus(arg1, arg2)
   local var156 = arg1.plugins[arg2.pluginId]
   local var160 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var163 = var1.Dictionary
   var163 = arg1
   local var165 = {}
   local var178 = {}
   var178.installStatus = arg2.statusCode
   var178.installationMsg = arg2.message
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var178)
   var165.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var163.join(var163, var165)
end

return require(var0.Packages.Rodux).createReducer(var71, var73)
