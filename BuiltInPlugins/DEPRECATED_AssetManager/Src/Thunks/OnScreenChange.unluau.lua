-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetAssets)
local var2 = require(var0.Src.Actions.SetAssetsModerationData)
local var3 = require(var0.Src.Actions.SetIsFetchingAssets)
local var4 = require(var0.Src.Actions.SetEditingAssets)
local var5 = require(var0.Src.Actions.SetSelectedAssets)
local var6 = require(var0.Src.Actions.SetSearchTerm)
local var7 = require(var0.Src.Thunks.GetAssets)
local var8 = require(var0.Src.Util.Screens)
return function(arg1, arg2)
   return function(arg1)
      local var149 = {}
      var149.assets = {}
      local var151 = var1(var149)
      arg1:dispatch()
      local var155 = var2({})
      arg1:dispatch()
      local var159 = var3(false)
      arg1:dispatch()
      local var163 = var4({})
      arg1:dispatch()
      local var167 = var5({})
      arg1:dispatch()
      local var171 = var6("")
      arg1:dispatch()
      if arg2.Path ~= var8.MAIN.Path then
         local var0 = var7(arg1, arg2.AssetType)
         arg1:dispatch()
      end
   end
end
