local Foundation = script:FindFirstAncestor("Foundation")

local useScreenSize = require(Foundation.Components.Sheet.useScreenSize)
local useTokens = require(Foundation.Providers.Style.useTokens)

-- Leaves a backdrop strip beside the panel on narrow screens.
-- Travel is the full open-to-closed slide distance, including margin and outerBleed.
local function useSurfaceWidth(width: number, margin: number, outerBleed: number?): (number, number)
	local tokens = useTokens()
	local screenSize = useScreenSize()
	local maxWidth = math.max(screenSize.X - tokens.Size.Size_1200 - margin, 0)
	local surfaceWidth = math.min(width, maxWidth)
	local travel = surfaceWidth + margin + (outerBleed or 0)
	return surfaceWidth, travel
end

return useSurfaceWidth
