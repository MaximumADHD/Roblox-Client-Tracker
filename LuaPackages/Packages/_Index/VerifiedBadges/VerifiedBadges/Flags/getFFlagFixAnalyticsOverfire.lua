game:DefineFastFlag("FixAnalyticsOverfire", true)

--[=[
	The `FixAnalyticsOverfire` flag is used to gate a one-line fix in EN-1290

	@within VerifiedBadges
	@tag Fast
	@private
]=]
local function getFFlagFixAnalyticsOverfire()
	return game:GetFastFlag("FixAnalyticsOverfire")
end

return getFFlagFixAnalyticsOverfire
