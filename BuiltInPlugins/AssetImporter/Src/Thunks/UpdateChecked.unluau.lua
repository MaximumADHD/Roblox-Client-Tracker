-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Utility.GetErrorChecked)
local var2 = require(var0.Src.Utility.GetCheckedCount)
local var3 = require(var0.Src.Actions.SetCheckedCount)
local var4 = require(var0.Src.Actions.SetTreeChecked)
local var5 = require(var0.Src.Actions.SetErrorNodeChecked)
return function(arg1)
   return function(arg1)
      local var33 = var4(arg1)
      arg1:dispatch()
      local var1 = arg1:getState().Preview.importTree
      local var47 = var5(var1(var1))
      arg1:dispatch()
      local var3 = var3(var2(var1))
      arg1:dispatch()
   end
end
