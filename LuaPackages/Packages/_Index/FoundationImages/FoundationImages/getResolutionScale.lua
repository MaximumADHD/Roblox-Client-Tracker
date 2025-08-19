local GuiService = game:GetService("GuiService")

local CorePackages = script:FindFirstAncestor("CorePackages")
local success, scale = pcall(GuiService.GetResolutionScale, GuiService)

local FoundationImages = script.Parent
local GetImageSetData = require(FoundationImages.Generated.GetImageSetData)
local Flags = require(FoundationImages.Flags)
local FixBlurryImages = Flags.FixBlurryImages

if not success or (not FixBlurryImages and not CorePackages) then
	scale = 1
end

-- Both this and the resolution scale should probably be provided to Foundation via some
-- prop or context, maybe even token, rather than us calling GuiService directly.
if GuiService:IsTenFootInterface() then
	scale = 3
end

local function getResolutionScale(): number
	local _, imageScale = GetImageSetData(scale)
	return imageScale
end

return getResolutionScale
