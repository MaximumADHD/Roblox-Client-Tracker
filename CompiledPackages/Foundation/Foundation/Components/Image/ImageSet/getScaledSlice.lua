local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Types = require(Foundation.Components.Types)
type Slice = Types.Slice

local FoundationImages = require(Packages.FoundationImages)

local function getScaledSlice(sliceCenter: Rect?, sliceScale: number?): Slice
	local scale = FoundationImages.getResolutionScale()

	if sliceCenter then
		local min = sliceCenter.Min * scale
		local max = sliceCenter.Max * scale
		sliceCenter = Rect.new(min, max)
		sliceScale = (sliceScale or 1) / scale
	end

	return {
		center = sliceCenter,
		scale = sliceScale,
	}
end

return getScaledSlice
