-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.MarkTryInStudioDone)
local var2 = require(var0.Core.Util.Analytics.Analytics)
return function(arg1, arg2, arg3, arg4, arg5)
   return function(arg1)
      local var0 = arg1.responseBody.data[1]
      if not var0 then
         warn("Could not find asset information in response for", tostring(var2))
         arg1.onTryAssetFailure(var2)
      end
      local var1 = {}
      local var33 = {}
      var33.Id = var0.asset.id
      var33.TypeId = var0.asset.typeId
      var33.AssetGenres = var0.asset.assetGenres
      var33.Name = var0.asset.name
      var33.Description = var0.asset.description
      var33.Created = var0.asset.createdUtc
      var33.Updated = var0.asset.updatedUtc
      var33.AssetSubTypes = var0.asset.assetSubTypes
      var1.Asset = var33
      var1.Context = {}
      local var51 = {}
      var51.Name = var0.creator.name
      var51.Id = var0.creator.id
      local var57 = var0.creator.type
      var51.Type = var57
      var1.Creator = var51
      var57 = var1
      arg4(var57)
      arg5(var1, false)
      arg1.onTryAsset(var2)
      local var2 = var1(var2)
      arg2:dispatch()
   end
end
