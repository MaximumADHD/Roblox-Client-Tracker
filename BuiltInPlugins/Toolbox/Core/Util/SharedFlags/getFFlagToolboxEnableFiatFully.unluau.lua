-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.SharedFlags.getFFlagToolboxAddAssetConfigPriceRedirectLink)
game:DefineFastFlag("ToolboxEnableFiatFully", false)
return function()
   return var0() and game:GetFastFlag("ToolboxEnableFiatFully")
end
