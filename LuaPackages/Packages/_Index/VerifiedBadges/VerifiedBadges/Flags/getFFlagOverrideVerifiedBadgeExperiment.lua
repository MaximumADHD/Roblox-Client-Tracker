game:DefineFastFlag("OverrideVerifiedBadgeExperiment", false)

--[=[
	The `OverrideVerifiedBadgeExperiment` flag is used as a mechanism to
	completely disable the experiment at a moments notice.

	By design, the experiment is always on, and only users that are in the
	experiment will be shown the verified badge. As such, once we conclude the
	experimnt and are ready for unenrolled users to also be included in seeing
	the verified badge, this flag will be flipped to `true`.

	@within VerifiedBadges
	@tag Fast
	@private
]=]
local function getFFlagOverrideVerifiedBadgeExperiment()
	return game:GetFastFlag("OverrideVerifiedBadgeExperiment")
end

return getFFlagOverrideVerifiedBadgeExperiment
