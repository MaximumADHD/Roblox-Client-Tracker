local Foundation = script:FindFirstAncestor("Foundation")

local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

local numericVariants: { [StatusIndicatorVariant]: boolean } = {
	[StatusIndicatorVariant.Emphasis] = true,
	[StatusIndicatorVariant.Standard] = true,
}

return numericVariants
