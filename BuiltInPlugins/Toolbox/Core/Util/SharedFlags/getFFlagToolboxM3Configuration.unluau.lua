-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.SharedFlags.getFFlagToolboxAssetConfigUseMFS)
game:DefineFastFlag("ToolboxM3Configuration3", false)
return function()
   return var0() and game:GetFastFlag("ToolboxM3Configuration3")
end
