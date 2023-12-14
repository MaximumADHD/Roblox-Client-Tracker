-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.ReviewStatus)
local var1 = {}
function var1.isApprovedAsset(arg1)
   if arg1.isModerated then
      return false
   end
   if arg1.reviewStatus ~= var0.Finished then
      if arg1.reviewStatus ~= var0.DoesNotRequire then
         local var0 = false
      end
      local var0 = true
   end
   return true
end

function var1.getModerationTooltip(arg1, arg2)
   if arg2.reviewStatus == "PendingModerationTooltip" then
      return arg1:getText("AssetItem", "PendingModerationTooltip")
   end
   if arg2.isModerated then
      return arg1:getText("AssetItem", "FailedModerationTooltip")
   end
end

return var1
