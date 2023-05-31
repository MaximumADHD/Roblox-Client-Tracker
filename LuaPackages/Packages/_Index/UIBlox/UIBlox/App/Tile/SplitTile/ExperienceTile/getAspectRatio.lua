local ExperienceTileRoot = script.Parent
local AspectRatioModeEnum = require(ExperienceTileRoot.Enum.AspectRatioMode)

type AspectRatioMode = AspectRatioModeEnum.AspectRatioMode

local SQUARE_ASPECT_RATIO = 1
local WIDE_ASPECT_RATIO = 0.5625

local AspectRatioMap: { [AspectRatioMode]: number } = {
	[AspectRatioModeEnum.Wide] = WIDE_ASPECT_RATIO,
	[AspectRatioModeEnum.Square] = SQUARE_ASPECT_RATIO,
}

local function getAspectRatio(mode: AspectRatioMode): number
	local aspectRatio = AspectRatioMap[mode]
	if not aspectRatio then
		error("Unkown aspect ratio " .. tostring(mode))
	end
	return aspectRatio
end

return getAspectRatio
