local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

export type PopoverArrowProps = {
	size: number,
	position: Types.Bindable<UDim2>,
	backgroundStyle: Types.ColorStyle,
	ZIndex: number,
	testId: string?,
}

local function PopoverArrow(props: PopoverArrowProps): React.ReactNode
	return React.createElement(View, {
		Size = UDim2.fromOffset(props.size, props.size),
		Position = props.position,
		Rotation = 45,
		ZIndex = props.ZIndex,
		backgroundStyle = props.backgroundStyle,
		tag = "anchor-center-center",
		testId = props.testId,
	})
end

return PopoverArrow
