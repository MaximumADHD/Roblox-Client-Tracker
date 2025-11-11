local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Flags = require(Foundation.Utility.Flags)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)

local InternalInput = require(Foundation.Components.InternalInput)

local function Story(props)
	local controls = props.controls
	local tokens = useTokens()

	local isChecked, setIsChecked = React.useState(false)

	local function handleActivated(newValue)
		setIsChecked(newValue)
	end

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-xlarge size-3000",
	}, {
		InternalInput = React.createElement(InternalInput, {
			isChecked = isChecked,
			isDisabled = controls.isDisabled,
			size = controls.size,
			onActivated = handleActivated,
			label = {
				text = controls.labelText,
				position = controls.labelPosition,
			},
			customVariantProps = if Flags.FoundationToggleVisualUpdate
				then {
					tag = "row gap-small align-x-center align-y-center",
					size = UDim2.new(0, 200, 0, 50),
					cursorRadius = UDim.new(0, 8),
					colors = { checkedStyle = tokens.Color.System[controls.checkedStyle] },
				}
				else {
					tag = "row gap-small align-x-center align-y-center",
					size = UDim2.new(0, 200, 0, 50),
					cursorRadius = UDim.new(0, 8),
					checkedStyle = tokens.Color.System[controls.checkedStyle],
				},
			LayoutOrder = 1,
		}, {
			Content = if isChecked
				then React.createElement(Text, {
					tag = "content-inverse-emphasis",
					Text = "Checked!",
				})
				else nil,
		}),
	})
end

return {
	summary = "Internal Input Component",
	story = Story,
	controls = {
		isDisabled = false,
		size = Dash.values(InputSize),
		labelText = "Input Label",
		labelPosition = {
			Enum.HorizontalAlignment.Right,
			Enum.HorizontalAlignment.Left,
		},
		checkedStyle = {
			"Success",
			"Alert",
			"Default",
		},
	},
}
