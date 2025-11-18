local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Orientation = require(Foundation.Enums.Orientation)

local OptionSelectorGroupContext = require(script.Parent.Parent.OptionSelectorGroupContext)
local OptionSelectorGroup = require(Foundation.Components.OptionSelectorGroup)

local LONG_TEXT_SUFFIX =
	" that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"

local function Story(props)
	local controls = props.controls
	local value, setValue = React.useState(nil)

	local label = controls.label
	local metadata = controls.metadata
	local description = controls.description

	if props.useLongText then
		label = if #label > 0 then `{label} {LONG_TEXT_SUFFIX}` else ""
		metadata = if #metadata > 0 then `{metadata} {LONG_TEXT_SUFFIX}` else ""
		description = if #description > 0 then `{description} {LONG_TEXT_SUFFIX}` else ""
	end

	return React.createElement(OptionSelectorGroupContext.Provider, {
		value = { value = value, onValueChanged = setValue, Selectable = true, orientation = controls.orientation },
	}, {
		React.createElement(OptionSelectorGroup.Item, {
			icon = controls.icon,
			value = controls.value,
			label = if #label > 0 then `{label} {controls.value}` else "",
			metadata = if #metadata > 0 then metadata else nil,
			description = if #description > 0 then description else nil,
			isDisabled = controls.isDisabled,
			size = controls.size,
		}),
	})
end

return {
	summary = "OptionSelectorGroupItem component",
	stories = {
		Default = {
			name = "Default",
			story = Story,
		},
		LongText = {
			name = "Long Text",
			story = function(props)
				return React.createElement(Story, Dash.join(props, { useLongText = true }))
			end,
		},
	},
	controls = {
		icon = Dash.values(BuilderIcons.Icon),
		isDisabled = false,
		label = "Label",
		metadata = "",
		description = "Description",
		size = Dash.values(InputSize),
		value = "A",
		orientation = Dash.values(Orientation),
	},
}
