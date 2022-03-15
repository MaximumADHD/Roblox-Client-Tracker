--[[
	Gets the closes game icon size available
]]
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)

local GAME_ICON_REQUEST_SIZES = {
	50,
	128,
	150,
	256,
	512,
}

return function(size)
	ArgCheck.isNonNegativeNumber(size, "Game Icon Size")
	-- We will find the next size that is the closest to the required size
	local sizeCount = #GAME_ICON_REQUEST_SIZES

	for _, requestSize in ipairs(GAME_ICON_REQUEST_SIZES) do
		if size <= requestSize then
			-- provide the image to sample down to
			return requestSize
		end
	end

	return GAME_ICON_REQUEST_SIZES[sizeCount]
end
