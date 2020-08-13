local FFlagTerrainToolsReplaceSrcTogglesOff = game:GetFastFlag("TerrainToolsReplaceSrcTogglesOff")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local BaseToggleButton = Roact.PureComponent:extend("ToggleButton")

function BaseToggleButton:init(props)
	self.toggle = function()
		if FFlagTerrainToolsReplaceSrcTogglesOff then
			if not self.props.Disabled then
				self.props.SetIsOn(not self.props.IsOn)
			end
		else
			self.props.SetIsOn(not self.props.IsOn)
		end
	end
end

function BaseToggleButton:render()
	return withTheme(function(theme)
		local layoutOrder = self.props.LayoutOrder or nil
		local position = self.props.Position or UDim2.new(0, 0, 0, 0)
		local size = self.props.Size
		local isOn = self.props.IsOn
		local onImage = self.props.OnImage
		local offImage = self.props.OffImage
		local image
		if FFlagTerrainToolsReplaceSrcTogglesOff then
			local disabled = self.props.Disabled
			local disabledOffImage = self.props.DisabledOffImage
			local disabledOnImage = self.props.DisabledOnImage

			image = disabled and (isOn and disabledOnImage or disabledOffImage) or (isOn and onImage or offImage)
		else
			image = isOn and onImage or offImage
		end

		return Roact.createElement("ImageButton", {
			Position = position,
			LayoutOrder = layoutOrder,
			Size = size,
			Image = image,

			BackgroundTransparency = 1,
			[Roact.Event.Activated] = self.toggle,
		})
	end)
end

local function ToggleButton(props)
	return withTheme(function(theme)
		local newProps = Cryo.Dictionary.join(props, {
			OnImage = theme.toggleTheme.toggleOnImage,
			OffImage = theme.toggleTheme.toggleOffImage,
			DisabledOnImage = theme.toggleTheme.toggleLockModeOnImage,
			DisabledOffImage = theme.toggleTheme.toggleLockModeOffImage,
			Disabled = FFlagTerrainToolsReplaceSrcTogglesOff and props.Disabled,
			Size = UDim2.new(0, 27, 0, 16),
		})
		return Roact.createElement(BaseToggleButton, newProps)
	end)
end

local function PickerButton(props)
	return withTheme(function(theme)
		local newProps = Cryo.Dictionary.join(props, {
			OnImage = theme.brushSettingsTheme.pickHeightEnableImage,
			OffImage = theme.brushSettingsTheme.pickHeightDisableImage,
			Size = UDim2.new(0, 18, 0, 18),
		})
		return Roact.createElement(BaseToggleButton, newProps)
	end)
end

return {
	ToggleButton = ToggleButton,
	PickerButton = PickerButton,
}
