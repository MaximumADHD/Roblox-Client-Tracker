-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Dash).None
local var2 = require(var0.Src.Util.CircularBuffer)
local var3 = require(var0.Src.Types)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   local var0 = {}
   var0.frameBuffer = arg1 or var1
   return var0
end)
