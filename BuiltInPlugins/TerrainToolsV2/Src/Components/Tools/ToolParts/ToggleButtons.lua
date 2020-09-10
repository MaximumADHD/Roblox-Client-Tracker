local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local FFlagTerrainToolsReplaceSrcTogglesOff = game:GetFastFlag("TerrainToolsReplaceSrcTogglesOff")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

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
end

local function ToggleButton_render(props, theme)
	local newProps = Cryo.Dictionary.join(props, {
		OnImage = theme.toggleTheme.toggleOnImage,
		OffImage = theme.toggleTheme.toggleOffImage,
		DisabledOnImage = theme.toggleTheme.toggleLockModeOnImage,
		DisabledOffImage = theme.toggleTheme.toggleLockModeOffImage,
		Disabled = FFlagTerrainToolsReplaceSrcTogglesOff and props.Disabled,
		Size = UDim2.new(0, 27, 0, 16),
	})
	return Roact.createElement(BaseToggleButton, newProps)
end

local function PickerButton_render(props, theme)
	local newProps = Cryo.Dictionary.join(props, {
		OnImage = theme.brushSettingsTheme.pickHeightEnableImage,
		OffImage = theme.brushSettingsTheme.pickHeightDisableImage,
		Size = UDim2.new(0, 18, 0, 18),
	})
	return Roact.createElement(BaseToggleButton, newProps)
end

if FFlagTerrainToolsUseDevFramework then
	local ToggleButton = Roact.PureComponent:extend("ToggleButton")

	function ToggleButton:render()
		local theme = self.props.Theme:get()

		return ToggleButton_render(self.props, theme)
	end

	ContextServices.mapToProps(ToggleButton, {
		Theme = ContextItems.UILibraryTheme,
	})

	local PickerButton = Roact.PureComponent:extend("PickerButton")

	function PickerButton:render()
		local theme = self.props.Theme:get()

		return PickerButton_render(self.props, theme)
	end

	ContextServices.mapToProps(PickerButton, {
		Theme = ContextItems.UILibraryTheme,
	})

	return {
		ToggleButton = ToggleButton,
		PickerButton = PickerButton,
	}
else
	local function ToggleButton(props)
		return withTheme(function(theme)
			return ToggleButton_render(props, theme)
		end)
	end

	local function PickerButton(props)
		return withTheme(function(theme)
			return PickerButton_render(props, theme)
		end)
	end

	return {
		ToggleButton = ToggleButton,
		PickerButton = PickerButton,
	}
end
