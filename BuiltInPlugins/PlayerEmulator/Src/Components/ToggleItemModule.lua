--[[
	ToggleItemModule for boolean policy items

	Props:
		string Key
			Label text
		boolean IsOn

		function ToggleCallback
			The reason we extract this as a module.
			Because the ToggleButton in UILibrary only takes isOn as parameter,
			but we need pass key into callback for any meaning logic business
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibrary = require(Plugin.Packages.UILibrary)
local ToggleButton = UILibrary.Component.ToggleButton

local ToggleItemModule = Roact.PureComponent:extend("ToggleItemModule")

function ToggleItemModule:init(props)
	self.onToggle = function(isOn)
		local key = props.Key
		props.ToggleCallback(key, isOn, props.Plugin:get())
	end
end

function ToggleItemModule:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")

	local key = props.Key
	local isOn = props.IsOn

	return Roact.createElement("Frame", {
		Size = theme.TOGGLE_ITEM_FRAME_SIZE,
		BackgroundTransparency = 1,
	}, {
		TextLabel = Roact.createElement("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = theme.TextColor,
			Size = theme.TOGGLE_ITEM_LABEL_SIZE,
			Text = key,
			BackgroundTransparency = 1,
		}),
		Toggle = Roact.createElement(ToggleButton, {
			Size = UDim2.new(0, theme.TOGGLE_BUTTON_WIDTH, 0, theme.TOGGLE_BUTTON_HEIGHT),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, theme.TOGGLE_BUTTON_OFFSET, 0.5, -theme.TOGGLE_BUTTON_HEIGHT/2),
			Enabled = true,
			IsOn = isOn,
			onToggle = self.onToggle,
		})
	})
end

ContextServices.mapToProps(ToggleItemModule, {
	Plugin = ContextServices.Plugin,
	Theme = ContextServices.Theme,
})

return ToggleItemModule