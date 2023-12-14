-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Constants.PluginInstalledStatus)
local var89 = {}
var89.plugins = {}
local var91 = {}
function var91.SetPluginId(arg1, arg2)
   local var95 = var1.Dictionary
   var95 = arg1
   local var97 = {}
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
   var97.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var95.join(var95, var97)
end

function var91.ClearPluginData(arg1, arg2)
   if not arg1.plugins[arg2.pluginId] then
      return arg1
   end
   local var122 = var1.Dictionary
   var122 = arg1
   local var124 = {}
   arg2.pluginId = var1.None
   var124.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var122.join(var122, var124)
end

function var91.SetPluginMetadata(arg1, arg2)
   local var139 = arg1.plugins[arg2.pluginId]
   local var143 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var146 = var1.Dictionary
   var146 = arg1
   local var148 = {}
   local var161 = {}
   var161.name = arg2.name
   var161.description = arg2.description
   var161.versionId = arg2.versionId
   var161.created = arg2.created
   var161.updated = arg2.updated
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var161)
   var148.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var146.join(var146, var148)
end

function var91.SetPluginInstallStatus(arg1, arg2)
   local var174 = arg1.plugins[arg2.pluginId]
   local var178 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var181 = var1.Dictionary
   var181 = arg1
   local var183 = {}
   local var196 = {}
   var196.installStatus = arg2.statusCode
   var196.installationMsg = arg2.message
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var196)
   var183.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var181.join(var181, var183)
end

return require(var0.Packages.Rodux).createReducer(var89, var91)
