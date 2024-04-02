-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Constants.PluginInstalledStatus)
local var18 = {}
var18.plugins = {}
local var20 = {}
function var20.SetPluginId(arg1, arg2)
   local var24 = var1.Dictionary
   var24 = arg1
   local var26 = {}
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
   var26.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var24.join(var24, var26)
end

function var20.ClearPluginData(arg1, arg2)
   if not arg1.plugins[arg2.pluginId] then
      return arg1
   end
   local var51 = var1.Dictionary
   var51 = arg1
   local var53 = {}
   arg2.pluginId = var1.None
   var53.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var51.join(var51, var53)
end

function var20.SetPluginMetadata(arg1, arg2)
   local var68 = arg1.plugins[arg2.pluginId]
   local var72 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var75 = var1.Dictionary
   var75 = arg1
   local var77 = {}
   local var90 = {}
   var90.name = arg2.name
   var90.description = arg2.description
   var90.versionId = arg2.versionId
   var90.created = arg2.created
   var90.updated = arg2.updated
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var90)
   var77.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var75.join(var75, var77)
end

function var20.SetPluginInstallStatus(arg1, arg2)
   local var103 = arg1.plugins[arg2.pluginId]
   local var107 = string.format("No plugin entry found for %s", arg2.pluginId)
   assert()
   local var110 = var1.Dictionary
   var110 = arg1
   local var112 = {}
   local var125 = {}
   var125.installStatus = arg2.statusCode
   var125.installationMsg = arg2.message
   arg2.pluginId = var1.Dictionary.join(arg1.plugins[arg2.pluginId], var125)
   var112.plugins = var1.Dictionary.join(arg1.plugins, {})
   return var110.join(var110, var112)
end

return require(var0.Packages.Rodux).createReducer(var18, var20)
