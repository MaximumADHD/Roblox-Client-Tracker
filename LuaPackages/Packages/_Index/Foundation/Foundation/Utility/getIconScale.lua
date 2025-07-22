local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local FoundationImages = require(Packages.FoundationImages)
local Images = FoundationImages.Images

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

--[[
	UIBlox Icons define unique icon grids (keylines) for each size of icons:

	Small icons fill the entire 16pt bounding box of the icon

	Medium icons use a 24pt icon grid centered within a 36pt bounding box

	Large icons use a 44pt icon grid centered within a 48pt bounding box
]]

local iconSizes: { [IconSize]: { Vector2 } } = {
	[IconSize.Small] = { Vector2.new(16, 16), Vector2.new(18, 18) },
	[IconSize.Medium] = { Vector2.new(28, 28), Vector2.new(36, 36) },
	[IconSize.Large] = { Vector2.new(48, 48) },
}

-- The exact numbers were perfect, but resulted in visuals that werea little off,
-- so we're manually adjusting them here. Probably some subpixel rendering issue.
local MANUAL_SCALE_ADJUSTMENT = 0.9
local resolutionScale = FoundationImages.getResolutionScale()

type UIBloxIconSize = "Small" | "Medium" | "Large"
local iconScales: { [UIBloxIconSize]: { [IconSize]: number } } = {
	Small = {
		[IconSize.XSmall :: any] = 0.66667,
		[IconSize.Small] = 0.88889,
		[IconSize.Medium] = 1.11111,
		[IconSize.Large] = 1.33333,
	},
	Medium = {
		[IconSize.XSmall :: any] = 0.5 * MANUAL_SCALE_ADJUSTMENT,
		[IconSize.Small] = 0.66667 * MANUAL_SCALE_ADJUSTMENT,
		[IconSize.Medium] = 0.83333 * MANUAL_SCALE_ADJUSTMENT,
		[IconSize.Large] = 1 * MANUAL_SCALE_ADJUSTMENT,
	},
	Large = {
		[IconSize.XSmall :: any] = 0.27273 * MANUAL_SCALE_ADJUSTMENT,
		[IconSize.Small] = 0.36364 * MANUAL_SCALE_ADJUSTMENT,
		[IconSize.Medium] = 0.45455 * MANUAL_SCALE_ADJUSTMENT,
		[IconSize.Large] = 0.54545 * MANUAL_SCALE_ADJUSTMENT,
	},
}

local function useIcon(name: string?, size: IconSize): (Vector2?, number)
	if not name then
		return nil, 1
	end

	local image = Images[name]
	if not image then
		-- This should never happen
		return nil, 1
	end

	-- Need to take into account the resolution scale for accurate intrinsic
	-- icon sizes. Spritesheets are scaled based on this value.
	local imageRectSize = Vector2.new(image.ImageRectSize.X / resolutionScale, image.ImageRectSize.Y / resolutionScale)

	local iconSize: UIBloxIconSize = IconSize.Medium
	if Dash.includes(iconSizes[IconSize.Small], imageRectSize) then
		iconSize = IconSize.Small
	elseif Dash.includes(iconSizes[IconSize.Medium], imageRectSize) then
		iconSize = IconSize.Medium
	elseif Dash.includes(iconSizes[IconSize.Large], imageRectSize) then
		iconSize = IconSize.Large
	end

	return imageRectSize, iconScales[iconSize][size]
end

return useIcon
