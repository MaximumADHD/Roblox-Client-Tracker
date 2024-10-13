local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useCursor = require(Foundation.Providers.Cursor.useCursor)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Components = Foundation.Components
local View = require(Components.View)
local Image = require(Components.Image)

type NumberInputControlProps = {
	isDisabled: boolean,
	onClick: () -> (),
}

type NumberInputControlsProps = {
	up: NumberInputControlProps,
	down: NumberInputControlProps,
	LayoutOrder: number?,
}

local IconButton = function(props)
	local tokens = useTokens()
	local radius = UDim.new(0, tokens.Radius.Medium)
	local cursor = useCursor({
		radius = radius,
		borderWidth = tokens.Stroke.Thicker,
	})

	return React.createElement(View, {
		onActivated = props.onActivated,
		Size = props.size,
		isDisabled = props.isDisabled,
		selection = {
			Selectable = not props.isDisabled,
			SelectionImageObject = cursor,
		},
		padding = props.padding,
		cornerRadius = radius,
		tag = props.tag,
	}, props.children)
end

local function NumberInputControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local horizontalPadding = (tokens.Size.Size_800 - tokens.Size.Size_150) / 2
	return React.createElement(View, {
		tag = "size-800-full col",
		LayoutOrder = props.LayoutOrder,
	}, {
		ControlUp = React.createElement(IconButton, {
			onActivated = props.up.onClick,
			isDisabled = props.up.isDisabled,
			padding = {
				left = UDim.new(0, horizontalPadding),
				right = UDim.new(0, horizontalPadding),
			},
			tag = "size-full fill padding-top-medium padding-bottom-xsmall",
		}, {
			Icon = React.createElement(Image, {
				Image = "component_assets/triangleUp_16",
				tag = "size-150-100 content-default",
			}),
		}),
		ControlDown = React.createElement(IconButton, {
			tag = "size-full fill padding-top-xsmall",
			onActivated = props.down.onClick,
			isDisabled = props.down.isDisabled,
			padding = {
				left = UDim.new(0, horizontalPadding),
				right = UDim.new(0, horizontalPadding),
			},
		}, {
			Icon = React.createElement(Image, {
				Image = "component_assets/triangleDown_16",
				tag = "size-150-100 content-default",
			}),
		}),
	})
end

return NumberInputControls
