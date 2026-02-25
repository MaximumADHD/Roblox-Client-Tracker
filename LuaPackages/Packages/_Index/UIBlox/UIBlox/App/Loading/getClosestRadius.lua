local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Foundation = require(Packages.Foundation)
local Radius = Foundation.Enums.Radius

local function getClosestRadius(radii: any, cornerRadius: UDim?)
	if not cornerRadius or cornerRadius == UDim.new(0, 0) then
		return Radius.None
	elseif cornerRadius.Scale >= 0.5 then
		return Radius.Circle
	end

	local closestRadiusName = nil
	local closestDiff = math.huge -- Start with a large difference

	local foundationRadiusToUIBloxRadiusMap = {
		[Radius.None] = 0,
		[Radius.XSmall] = 2, -- No XSmall in UIBlox tokens
		[Radius.Small] = radii.Small,
		[Radius.Medium] = radii.Medium,
		-- Large UIBlox token does not map to anything in Foundation tokens
		[Radius.Large] = radii.XLarge,
		-- No XLarge in Foundation tokens
		[Radius.Circle] = radii.Circle,
	}

	-- Iterate through sorted radius values to find the closest match
	for radius, offset in foundationRadiusToUIBloxRadiusMap do
		local diff = math.abs(cornerRadius.Offset - offset)
		if diff < closestDiff then
			closestDiff = diff
			closestRadiusName = radius
		end
	end

	return closestRadiusName
end

return getClosestRadius
