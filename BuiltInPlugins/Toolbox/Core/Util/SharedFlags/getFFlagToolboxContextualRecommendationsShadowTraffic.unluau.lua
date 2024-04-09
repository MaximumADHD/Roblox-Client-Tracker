-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("ToolboxContextualRecommendationsShadowTraffic", false)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Util.SharedFlags.getFFlagToolboxContextualRecommendations)
return function()
   return var0() and game:GetFastFlag("ToolboxContextualRecommendationsShadowTraffic")
end
