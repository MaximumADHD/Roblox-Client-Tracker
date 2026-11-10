local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type CommonProps = Types.CommonProps

local function withCommonProps<T>(props: CommonProps, baseProps: T)
	if type(baseProps) == "table" then
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.AnchorPoint = props.AnchorPoint
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.LayoutOrder = props.LayoutOrder
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.Position = props.Position
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.Visible = props.Visible
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.ZIndex = props.ZIndex
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.onAbsoluteSizeChanged = props.onAbsoluteSizeChanged
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.onAbsolutePositionChanged = props.onAbsolutePositionChanged
		-- lute-lint-ignore(immutability) UIBLOX-5675
		baseProps.testId = props.testId
	end
	return baseProps :: T & CommonProps
end

return withCommonProps
