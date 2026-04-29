local Framework = script:FindFirstAncestor("UI").Parent

local getFFlagDevFrameworkShimmerImprovements = require(Framework.SharedFlags.getFFlagDevFrameworkShimmerImprovements)

local StyleKey = require(Framework.Style.StyleKey)

if getFFlagDevFrameworkShimmerImprovements() then
	return {
		BackgroundColor = Color3.new(1, 1, 1),
		ColorStart = StyleKey.ShimmerStart,
		ColorEnd = StyleKey.ShimmerEnd,
		ColorEndTintPercent = 1,
		Rotation = 0,
		Time = 1,
	}
else
	return {
		CornerRadius = UDim.new(0.03, 0),
		ColorStart = StyleKey.ShimmerStart,
		ColorEnd = StyleKey.ShimmerEnd,
		TransitionPeriod = 2,
	}
end
