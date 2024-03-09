-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var6 = var0.Src.Util
local var7 = require(var6.CircularBuffer)
local var8 = require(var6.debugFlags)
local var158 = {}
var158.FrameBuffer = nil
var158.Overrides = {}
function require(var5.SetFrameBuffer).name(arg1, arg2)
   local var167 = {}
   var167.FrameBuffer = arg2.frameBuffer
   return var2(arg1, var167)
end

function require(var5.SetOverrides).name(arg1, arg2)
   local var175 = {}
   var175.Overrides = arg2.overrides
   return var2(arg1, var175)
end

return require(var0.Packages.Rodux).createReducer(var158, {})
