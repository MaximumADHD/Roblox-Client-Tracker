-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Actions.Common.SetPluginState)
local var4 = {}
local var30 = require(var0.Src.Util.Enums).PluginState
var4.pluginState = var30.Default
var30 = var4
local var33 = {}
function var33.SetPluginState(arg1, arg2)
   local var38 = {}
   var38.pluginState = arg2.state
   return var1(arg1, var38)
end

return require(var0.Packages.Rodux).createReducer(var30, var33)
