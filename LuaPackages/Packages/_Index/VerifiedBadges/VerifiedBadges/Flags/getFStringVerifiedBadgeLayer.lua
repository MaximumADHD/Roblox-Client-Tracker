game:DefineFastString("VerifiedBadgeLayer", "Ecosystems.Badges")

--[=[
	The `VerifiedBadgeLayer` string controls the name of the layer we use for
	our experiment.

	By default the value is `"Ecosystems.Badges"` and we do not anticipate it
	changing, but we have this flagged so we can change layers on the fly if
	needed.

	@within VerifiedBadges
	@tag Fast
]=]
local function getFStringVerifiedBadgeLayer()
	return game:GetFastString("VerifiedBadgeLayer")
end

return getFStringVerifiedBadgeLayer
