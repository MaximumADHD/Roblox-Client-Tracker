local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local BaseToggleButton = Roact.PureComponent:extend("ToggleButton")

function BaseToggleButton:init(props)
	self.toggle = function()
		if not self.props.Disabled then
			self.props.SetIsOn(not self.props.IsOn)
		end
	end
end

function BaseToggleButton:render()
	local layoutOrder = self.props.LayoutOrder or nil
	local position = self.props.Position or UDim2.new(0, 0, 0, 0)
	local size = self.props.Size
	local isOn = self.props.IsOn

	local onImage = self.props.OnImage
	local offImage = self.props.OffImage
	local disabledOffImage = self.props.DisabledOffImage
	local disabledOnImage = self.props.DisabledOnImage

	local disabled = self.props.Disabled
	local image = disabled and (isOn and disabledOnImage or disabledOffImage)
		or (isOn and onImage or offImage)

	return Roact.createElement("ImageButton", {
		Position = position,
		LayoutOrder = layoutOrder,
		Size = size,
		Image = image,

		BackgroundTransparency = 1,
		[Roact.Event.Activated] = self.toggle,
	})
end

local ToggleButton = Roact.PureComponent:extend("ToggleButton")

function ToggleButton:render()
	local theme = self.props.Theme:get()

	local newProps = Cryo.Dictionary.join(self.props, {
		OnImage = theme.toggleTheme.toggleOnImage,
		OffImage = theme.toggleTheme.toggleOffImage,
		DisabledOnImage = theme.toggleTheme.toggleLockModeOnImage,
		DisabledOffImage = theme.toggleTheme.toggleLockModeOffImage,
		Size = UDim2.new(0, 27, 0, 16),
	})
	return Roact.createElement(BaseToggleButton, newProps)
end

ContextServices.mapToProps(ToggleButton, {
	Theme = ContextItems.UILibraryTheme,
})

local PickerButton = Roact.PureComponent:extend("PickerButton")

function PickerButton:render()
	local theme = self.props.Theme:get()

	local newProps = Cryo.Dictionary.join(self.props, {
		OnImage = theme.brushSettingsTheme.pickHeightEnableImage,
		OffImage = theme.brushSettingsTheme.pickHeightDisableImage,
		Size = UDim2.new(0, 18, 0, 18),
	})

	return Roact.createElement(BaseToggleButton, newProps)
end

ContextServices.mapToProps(PickerButton, {
	Theme = ContextItems.UILibraryTheme,
})

return {
	ToggleButton = ToggleButton,
	PickerButton = PickerButton,
}
