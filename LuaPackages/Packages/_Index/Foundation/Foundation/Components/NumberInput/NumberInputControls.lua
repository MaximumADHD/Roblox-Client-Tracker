local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTokens = require(Foundation.Providers.Style.useTokens)

local Components = Foundation.Components
local View = require(Components.View)
local Image = require(Components.Image)

local useNumberInputVariants = require(script.Parent.useNumberInputVariants)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

type NumberInputControlProps = {
	isDisabled: boolean,
	onClick: () -> (),
}

type NumberInputControlsProps = {
	-- Size of the controls
	size: InputSize,
	up: NumberInputControlProps,
	down: NumberInputControlProps,
	LayoutOrder: number?,
}

local IconButton = function(props)
	local tokens = useTokens()
	local radius = UDim.new(0, tokens.Radius.Medium)

	local cursor = React.useMemo(function()
		return {
			radius = radius,
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	return React.createElement(View, {
		onActivated = props.onActivated,
		Size = props.size,
		isDisabled = props.isDisabled,
		selection = {
			Selectable = not props.isDisabled,
		},
		cursor = cursor,
		padding = props.padding,
		cornerRadius = radius,
		tag = props.tag,
	}, props.children)
end

local function NumberInputControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local variantProps = useNumberInputVariants(tokens, props.size)

	return React.createElement(View, {
		tag = "col",
		Size = UDim2.new(0, variantProps.button.width, 1, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		ControlUp = React.createElement(IconButton, {
			onActivated = props.up.onClick,
			isDisabled = props.up.isDisabled,
			padding = variantProps.button.padding,
			tag = variantProps.upButton.tag,
		}, {
			Icon = React.createElement(Image, {
				Image = "component_assets/triangleUp_16",
				tag = variantProps.icon.tag,
			}),
		}),
		ControlDown = React.createElement(IconButton, {
			tag = variantProps.downButton.tag,
			onActivated = props.down.onClick,
			isDisabled = props.down.isDisabled,
			padding = variantProps.button.padding,
		}, {
			Icon = React.createElement(Image, {
				Image = "component_assets/triangleDown_16",
				tag = variantProps.icon.tag,
			}),
		}),
	})
end

return NumberInputControls
