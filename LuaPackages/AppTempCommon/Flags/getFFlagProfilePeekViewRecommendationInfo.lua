game:DefineFastFlag("ProfilePeekViewRecommendationInfo_v2", false)

local getFFlagUpgradeLuaProfileDeps = require(script.Parent.getFFlagUpgradeLuaProfileDeps)

return function()
	return getFFlagUpgradeLuaProfileDeps() and game:GetFastFlag("ProfilePeekViewRecommendationInfo_v2")
end
