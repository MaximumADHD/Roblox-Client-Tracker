-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Reducers.AssetsMock)
local var2 = require(var0.Core.Reducers.NetworkErrorsMock)
local var3 = require(var0.Core.Reducers.PageInfoMock)
local var4 = require(var0.Core.Reducers.VotingReducerMock)
local var5 = require(var0.Core.Reducers.PurchaseMock)
local var6 = require(var0.Core.Reducers.PackagesMock)
return function(arg1, arg2)
   local var0 = {}
   var0.assets = var1(arg1 and arg1.assets, arg2)
   var0.networkErrors = var2(arg1 and arg1.networkErrors, arg2)
   var0.pageInfo = var3(arg1 and arg1.pageInfo, arg2)
   var0.voting = var4(arg1 and arg1.voting, arg2)
   var0.purchase = var5(arg1 and arg1.purchase, arg2)
   var0.packages = var6(arg1 and arg1.packages, arg2)
   return var0
end
