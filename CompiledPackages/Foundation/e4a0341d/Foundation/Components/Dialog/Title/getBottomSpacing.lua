local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function getBottomSpacing(tokens: Tokens): UDim?
	if not Flags.FoundationDialogBodyUpdate then
		return nil
	end
	-- Negative offset to compensate for the body gap (20px)
	-- while maintaining a small fixed padding (4px)
	return -UDim.new(0, tokens.Gap.XLarge - tokens.Gap.XSmall)
end

return getBottomSpacing
