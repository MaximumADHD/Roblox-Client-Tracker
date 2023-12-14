-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("ToolboxUseAssetPermissionsApiForCanManage")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Core.Util.DebugFlags)
local var3 = require(var1.Core.Util.getUserId)
local var4 = require(var1.Core.Actions.NetworkError)
local var5 = require(var1.Core.Actions.SetCanManageAsset)
return function(arg1, arg2)
   return function(arg1)
      local var0 = var3(arg1, var0)
      arg2:dispatch()
   end
end
