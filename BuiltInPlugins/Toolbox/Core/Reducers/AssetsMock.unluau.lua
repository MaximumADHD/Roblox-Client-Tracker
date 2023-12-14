-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Core.Util.PagedRequestCursor)
return function(arg1, arg2)
   local var0 = {}
   var0.idToAssetMap = {}
   var0.idsToRender = {}
   var0.isLoading = true
   var0.currentCursor = var0.createDefaultCursor()
   var0.totalAssets = 0
   var0.assetsReceived = 0
   var0.hasReachedBottom = false
   var0.manageableAssets = {}
   return var0
end
