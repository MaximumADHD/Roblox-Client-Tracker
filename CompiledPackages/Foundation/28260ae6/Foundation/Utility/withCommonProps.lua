local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type CommonProps = Types.CommonProps

local function withCommonProps<T>(props: CommonProps, baseProps: T)
	if type(baseProps) == "table" then
		baseProps.AnchorPoint = props.AnchorPoint
		baseProps.LayoutOrder = props.LayoutOrder
		baseProps.Position = props.Position
		baseProps.Visible = props.Visible
		baseProps.ZIndex = props.ZIndex
		baseProps.onAbsoluteSizeChanged = props.onAbsoluteSizeChanged
		baseProps.onAbsolutePositionChanged = props.onAbsolutePositionChanged
		baseProps.testId = props.testId
	end
	return baseProps :: T & CommonProps
end

return withCommonProps
