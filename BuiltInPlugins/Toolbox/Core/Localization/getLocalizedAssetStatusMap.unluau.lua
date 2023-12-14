-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.AssetConfigConstants)
return function(arg1)
   var0.ASSET_STATUS.ReviewPending = arg1:getText("General", "StatusReviewPending")
   var0.ASSET_STATUS.Moderated = arg1:getText("General", "StatusModerated")
   var0.ASSET_STATUS.ReviewApproved = arg1:getText("General", "StatusReviewApproved")
   var0.ASSET_STATUS.OnSale = arg1:getText("General", "StatusOnSale")
   var0.ASSET_STATUS.OffSale = arg1:getText("General", "StatusOffSale")
   var0.ASSET_STATUS.DelayedRelease = arg1:getText("General", "StatusDelayedRelease")
   var0.ASSET_STATUS.Free = arg1:getText("General", "Free")
   return {}
end
