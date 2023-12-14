-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Actions.Common.SetPluginState)
local var4 = {}
local var237 = require(var0.Src.Util.Enums).PluginState
var4.pluginState = var237.Default
var237 = var4
local var240 = {}
function var240.SetPluginState(arg1, arg2)
   local var245 = {}
   var245.pluginState = arg2.state
   return var1(arg1, var245)
end

return require(var0.Packages.Rodux).createReducer(var237, var240)
