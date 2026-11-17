local Foundation = script:FindFirstAncestor("Foundation")

local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

-- Diameter of a StatusIndicator's container: the dot for an empty indicator, the height for a numeric one.
local function getStatusIndicatorSize(tokens: Tokens, size: StatusIndicatorSize, isNumeric: boolean): number
	if size == StatusIndicatorSize.Large or size == StatusIndicatorSize.Pictogram then
		return tokens.Size.Size_500
	elseif isNumeric then
		return tokens.Size.Size_400
	elseif size == StatusIndicatorSize.Medium then
		return tokens.Size.Size_250
	elseif size == StatusIndicatorSize.Small then
		return tokens.Size.Size_200
	end
	return tokens.Size.Size_150
end

return getStatusIndicatorSize
