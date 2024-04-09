-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.SharedFlags.getFFlagToolboxSeparatePurchaseStatusDialogsFromAssetPreview)
game:DefineFastFlag("ToolboxAddFiatPricesIntoAssetTile4", false)
return function()
   return var0() and game:GetFastFlag("ToolboxAddFiatPricesIntoAssetTile4")
end
