--!nonstrict
local UIBlox = script.Parent.Parent
local Packages = UIBlox.Parent

local Foundation = require(Packages.Foundation)
local IconSize = Foundation.Enums.IconSize

type Tokens = Foundation.Tokens

-- Mirrors the non-builder-icon mapping from useIconSize (XLarge/XXLarge are deprecated):
--   XSmall  → Size_200
--   Small   → Size_400
--   Medium  → Size_900
--   Large   → Size_1200
local function getLoadingIconSize(size: UDim2?, tokens: Tokens): string?
	if size == nil then
		return nil
	end

	local offset = size.Y.Offset

	-- Scale-based sizes can't be resolved to pixels at this point;
	-- fall back to Large (Foundation Loading default) unless offset is also set.
	if size.Y.Scale > 0 and offset <= 0 then
		return IconSize.Large
	end

	local sizeMap = {
		{ IconSize.XSmall, tokens.Size.Size_200 },
		{ IconSize.Small, tokens.Size.Size_400 },
		{ IconSize.Medium, tokens.Size.Size_900 },
		{ IconSize.Large, tokens.Size.Size_1200 },
	}

	local bestName = sizeMap[1][1]
	local bestDist = math.abs(offset - sizeMap[1][2])

	for i = 2, #sizeMap do
		local dist = math.abs(offset - sizeMap[i][2])
		if dist < bestDist then
			bestName = sizeMap[i][1]
			bestDist = dist
		end
	end

	return bestName
end

return getLoadingIconSize
