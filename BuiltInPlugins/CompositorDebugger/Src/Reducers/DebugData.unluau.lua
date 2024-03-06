-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var6 = require(var0.Src.Util.debugFlags)
local var155 = {}
var155.FrameBuffer = nil
var155.Overrides = {}
function require(var5.SetFrameBuffer).name(arg1, arg2)
   local var164 = {}
   var164.FrameBuffer = arg2.frameBuffer
   return var2(arg1, var164)
end

function require(var5.SetOverrides).name(arg1, arg2)
   local var172 = {}
   var172.Overrides = arg2.overrides
   return var2(arg1, var172)
end

return require(var0.Packages.Rodux).createReducer(var155, {})
