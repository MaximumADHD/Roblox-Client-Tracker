-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.MarkTryInStudioDone)
local var2 = require(var0.Core.Util.Analytics.Analytics)
local var3 = game:GetFastFlag("ToolboxDoNotTryInStudioPlayMode")
return function(arg1, arg2, arg3, arg4, arg5)
   return function(arg1)
      local var0 = arg1.responseBody.data[1]
      if not var0 then
         warn("Could not find asset information in response for", tostring(var3))
         var2.onTryAssetFailure(var3)
      end
      local var1 = {}
      local var37 = {}
      var37.Id = var0.asset.id
      var37.TypeId = var0.asset.typeId
      var37.AssetGenres = var0.asset.assetGenres
      var37.Name = var0.asset.name
      var37.Description = var0.asset.description
      var37.Created = var0.asset.createdUtc
      var37.Updated = var0.asset.updatedUtc
      var37.AssetSubTypes = var0.asset.assetSubTypes
      var1.Asset = var37
      var1.Context = {}
      local var55 = {}
      var55.Name = var0.creator.name
      var55.Id = var0.creator.id
      local var61 = var0.creator.type
      var55.Type = var61
      var1.Creator = var55
      var61 = var1
      arg1(var61)
      arg4(var1, false)
      var2.onTryAsset(var3)
      local var2 = arg2(var3)
      arg5:dispatch()
   end
end
