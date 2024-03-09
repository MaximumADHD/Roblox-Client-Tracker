-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = var0.Src.Actions
local var2 = require(var1.SetDebugDataEvent)
local var3 = require(var1.SetPropertyOverrideEvent)
local var4 = require(var1.SetLayerAdornmentEvent)
local var5 = require(var1.SetDebugPoseEvent)
local var6 = require(var1.SetActor)
local var7 = require(var1.SetFrameBuffer)
local var8 = require(var0.Src.Util.Constants)
return function()
   return function(arg1)
      local var0 = arg1:getState().Status.Actor
      if not var0 then
      end
      local var1 = arg1:getState().Status.DebugDataConnection
      if var1 then
         var1:Disconnect()
      end
      local var2 = var0:FindFirstChild(var8.FOLDERS.CompositorDebugger)
      if var2 then
         var2:Destroy()
      end
      local var48 = var2(nil, nil)
      arg1:dispatch()
      local var52 = var3(nil)
      arg1:dispatch()
      local var56 = var4(nil)
      arg1:dispatch()
      local var60 = var5(nil)
      arg1:dispatch()
      local var64 = var6(nil)
      arg1:dispatch()
      local var8 = var7(nil)
      arg1:dispatch()
   end
end
