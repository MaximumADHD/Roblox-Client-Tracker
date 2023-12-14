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
      local var1 = {}
      var1.timestamp = os.clock()
      var1.payload = arg1
      var1.layerMap = arg2
      local var38 = var0.WriteIndex
      var0.WriteIndex = var1
      local var43 = var5
      var43 = var1(var0.History)
      local var49 = var4(var43, 1 + var38 % var43.HISTORY_FRAMES)
      arg1:dispatch()
      local var4 = var3(arg1, arg2)
      arg1:dispatch()
   end
end
