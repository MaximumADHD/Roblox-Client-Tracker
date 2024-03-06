-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = var0.Src.Actions
local var2 = require(var1.SetDebugDataEvent)
local var3 = require(var1.SetPropertyOverrideEvent)
local var4 = require(var1.SetLayerAdornmentEvent)
local var5 = require(var1.SetActor)
local var6 = require(var1.SetFrameBuffer)
local var7 = require(var0.Src.Util.Constants)
return function()
   return function(arg1)
      local var0 = arg1:getState().Status.Actor
      if not var0 then
      end
      local var1 = arg1:getState().Status.DebugDataConnection
      if var1 then
         var1:Disconnect()
      end
      var0:FindFirstChild(var7.FOLDERS.CompositorDebugger):Destroy()
      local var45 = var2(nil, nil)
      arg1:dispatch()
      local var49 = var3(nil)
      arg1:dispatch()
      local var53 = var4(nil)
      arg1:dispatch()
      local var57 = var5(nil)
      arg1:dispatch()
      local var6 = var6(nil)
      arg1:dispatch()
   end
end
