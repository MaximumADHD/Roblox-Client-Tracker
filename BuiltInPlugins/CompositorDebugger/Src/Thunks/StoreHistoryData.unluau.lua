-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash.copy
local var2 = var0.Src.Actions
local var3 = require(var2.SetDebugData)
local var4 = require(var2.SetHistory)
local var5 = require(var0.Src.Util.Constants)
local var6 = require(var0.Src.Types)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1:getState().DebugData
      local var1 = os.clock()
      local var2 = {}
      var2.timestamp = var1
      var2.payload = arg1
      var2.layerMap = arg2
      local var97 = var0.WriteIndex
      var0.WriteIndex = var2
      local var102 = var5
      var102 = var1(var0.History)
      local var109 = var4(var102, 1 + var97 % var102.HISTORY_FRAMES, var1)
      arg1:dispatch()
      local var5 = var3(arg1, arg2)
      arg1:dispatch()
   end
end
