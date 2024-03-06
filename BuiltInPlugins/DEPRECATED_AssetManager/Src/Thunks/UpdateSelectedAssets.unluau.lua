-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Dash.shallowEqual
local var2 = require(var0.Src.Actions.SetSelectedAssets)
return function(arg1)
   return function(arg1)
      if not var1(arg1, arg1:getState().AssetManagerReducer.selectedAssets) then
         local var0 = var2(arg1)
         arg1:dispatch()
      end
   end
end
