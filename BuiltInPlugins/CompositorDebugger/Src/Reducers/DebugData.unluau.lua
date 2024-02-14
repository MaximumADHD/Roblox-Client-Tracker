-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var6 = require(var0.Src.Util.debugFlags)
local var158 = {}
var158.History = {}
var158.WriteIndex = 1
var158.ReadOffset = nil
var158.DebugData = nil
var158.LayerMap = {}
var158.Overrides = {}
function require(var5.SetDebugData).name(arg1, arg2)
   local var171 = {}
   var171.DebugData = arg2.debugData
   var171.LayerMap = arg2.layerMap
   return var2(arg1, var171)
end

function require(var5.SetOverrides).name(arg1, arg2)
   local var180 = {}
   var180.Overrides = arg2.overrides
   return var2(arg1, var180)
end

function require(var5.SetHistory).name(arg1, arg2)
   local var188 = {}
   var188.History = arg2.history
   var188.WriteIndex = arg2.writeIndex
   var188.LastTimestamp = arg2.lastTimestamp
   return var2(arg1, var188)
end

return require(var0.Packages.Rodux).createReducer(var158, {})
