-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = var1.Packages
local var3 = require(var2.Cryo)
local var4 = require(var1.Core.Util.DebugFlags)
local var5 = var1.Core.Actions
local var6 = require(var5.NetworkError)
local var7 = require(var5.ResolveAssetPermissionsRollingRequest)
local var8 = require(var5.StartInProgressAssetPermissionsRollingRequest)
local var9 = require(var5.QueueAssetPermissionsRollingRequest)
local var10 = require(var5.SetDescendantPermissions)
local var11 = require(var2.Framework).Util.Promise
local var12 = require(var1.Core.Flags.getFFlagToolboxRollingAssetPermissionRequests)
local var13 = game:DefineFastInt("ToolboxRollingAssetPermissionRequestsLimit", 10)
return function(arg1, arg2)
   return function(arg1)
      if arg1.rollingAssetPermissionRequests.queued[1] == "task" then
         task.spawn(var11)
      end
   end
end
