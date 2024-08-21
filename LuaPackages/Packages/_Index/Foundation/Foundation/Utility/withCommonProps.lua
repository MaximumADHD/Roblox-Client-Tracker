local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type CommonProps = Types.CommonProps

local function withCommonProps<T>(props: CommonProps, baseProps: T)
	if type(baseProps) == "table" then
		baseProps.LayoutOrder = props.LayoutOrder
		baseProps.Position = props.Position
		baseProps.Visible = props.Visible
		baseProps.ZIndex = props.ZIndex
	end
	return baseProps :: T & CommonProps
end

return withCommonProps
