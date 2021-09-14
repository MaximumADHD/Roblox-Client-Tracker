--[[
	CustomTextButton - Creates a custom text button that handles hovering and clicking

	Props
		boolean isMain - handles theming for if this is the primary button or not
		boolean isLarge = handles creating a slightly larger button
		number layoutOrder - sets LayoutOrder property
		string labelText - text to display on the button
]]

local root = script.Parent.Parent.Parent

-- imports
local Roact = require(root.lib.Roact)
local Assets = require(root.src.Assets)
local themeConfig = require(root.src.utils.themeConfig)
local Constants = require(root.src.Constants)

-- theme
local ButtonColors = {
	Default = {
		Light = Color3.fromRGB(255, 255, 255),
		Dark = Color3.fromRGB(60, 60, 60),
	},
	Hover = {
		Light = Color3.fromRGB(228, 238, 254),
		Dark = Color3.fromRGB(66, 66, 66),
	},
}

local MainButtonColors = {
	Default = {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(0, 162, 255),
	},
	Hover = {
		Light = Color3.fromRGB(50, 181, 255),
		Dark = Color3.fromRGB(50, 181, 255),
	},
}

local LabelColors = {
	Light = Color3.fromRGB(0, 0, 0),
	Dark = Color3.fromRGB(255, 255, 255),
}

local MainLabelColors = {
	Light = Color3.fromRGB(255, 255, 255),
	Dark = Color3.fromRGB(255, 255, 255),
}

local BorderColors = {
	Light = Color3.fromRGB(184, 184, 184),
	Dark = Color3.fromRGB(60, 60, 60),
}

local MainBorderColors = {
	Light = Color3.fromRGB(0, 162, 255),
	Dark = Color3.fromRGB(0, 162, 255),
}

-- component
local CustomTextButton = Roact.Component:extend("CustomTextButton")

function CustomTextButton:init()
	self.state = {
		hovered = false,
		pressed = false,
	}
end

function CustomTextButton:getButtonThemeConfig()
	local config
	if self.props.isMain then
		if self.state.pressed or self.state.hovered then
			config = MainButtonColors.Hover
		else
			config = MainButtonColors.Default
		end
	else
		if self.state.pressed or self.state.hovered then
			config = ButtonColors.Hover
		else
			config = ButtonColors.Default
		end
	end
	return themeConfig(config)
end

function CustomTextButton:getLabelThemeConfig()
	return themeConfig(self.props.isMain and MainLabelColors or LabelColors)
end

function CustomTextButton:getBorderThemeConfig()
	return themeConfig(self.props.isMain and MainBorderColors or BorderColors)
end

function CustomTextButton:render()
	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		Image = Assets.BUTTON_AVATAR_TYPE,
		ScaleType = Enum.ScaleType.Slice,
		Size = self.props.isLarge and UDim2.new(0, game:GetFastFlag("DisplayCorrectTypeInDetectionPrompt") and 192 or 162, 0, 34) or UDim2.new(0, 102, 0, 34),
		SliceCenter = Rect.new(4, 4, 5, 5),
		ImageColor3 = self:getButtonThemeConfig(),
		LayoutOrder = self.props.layoutOrder,

		[Roact.Event.InputBegan] = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				self:setState({ hovered = true })
			end
		end,

		[Roact.Event.InputEnded] = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				self:setState({
					hovered = false,
					pressed = false,
				})
			end
		end,

		[Roact.Event.MouseButton1Down] = function()
			self:setState({ pressed = true })
		end,

		[Roact.Event.MouseButton1Up] = function()
			self:setState({ pressed = false })
		end,

		[Roact.Event.MouseButton1Click] = self.props[Roact.Event.MouseButton1Click],

	}, {
		border = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = Assets.BUTTON_AVATAR_TYPE_BORDER,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 1, 0),
			SliceCenter = Rect.new(4, 4, 5, 5),
			ImageColor3 = self:getBorderThemeConfig(),
		}),
		label = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Size = UDim2.new(1, 0, 1, 0),
			TextSize = Constants.FONT_SIZE_TITLE,
			Text = self.props.labelText,
			TextColor3 = self:getLabelThemeConfig(),
		})
	})
end

return CustomTextButton