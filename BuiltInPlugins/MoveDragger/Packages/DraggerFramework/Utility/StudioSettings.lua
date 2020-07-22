local DraggerFramework = script.Parent.Parent

local getEngineFeatureActiveInstanceHighlight = require(DraggerFramework.Flags.getEngineFeatureActiveInstanceHighlight)

local Studio = settings().Studio

local StudioSettings = {
	AnimateHoverOver = Studio["Animate Hover Over"],
	HoverAnimateSpeed = Studio["Hover Animate Speed"],
	HoverOverColor = Studio["Hover Over Color"],
	LineThickness = 0.04,
	SelectColor = Studio["Select Color"],
	ShowHoverOver = Studio["Show Hover Over"],
}

if getEngineFeatureActiveInstanceHighlight() then
	StudioSettings.ActiveColor = Studio["Active Color"]
	StudioSettings.ActiveHoverOverColor = Studio["Active Hover Over Color"]
end

function StudioSettings.getHoverAnimateSpeedSeconds(speed)
	if speed == Enum.HoverAnimateSpeed.VerySlow then
		return 2
	elseif speed == Enum.HoverAnimateSpeed.Slow then
		return 1
	elseif speed == Enum.HoverAnimateSpeed.Medium then
		return 0.5
	elseif speed == Enum.HoverAnimateSpeed.Fast then
		return 0.25
	elseif speed == Enum.HoverAnimateSpeed.VeryFast then
		return 0.1
	end

	warn("Unexpected Enum.HoverAnimateSpeed value: " .. tostring(speed))
	return 0
end

return StudioSettings
