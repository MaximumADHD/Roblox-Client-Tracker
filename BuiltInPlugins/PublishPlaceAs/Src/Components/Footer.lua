--[[
	Footer shown at the bottom of the Game Settings widget.
	Contains the Save and Cancel buttons.

	Props:
	OnClose - run when "Cancel" is hit
	NextScreenText - text for screen. nil for no switch button
	NextScreen - Constants.SCREEN to switch to
	MainButton - table
	  Name - FooterButton text localization name
	  Active - is clickable
	  OnActivated - function to run on click
]]

local FOOTER_GRADIENT_SIZE = 3
local FOOTER_GRADIENT_TRANSPARENCY = 0.9
local FOOTER_GRADIENT_IMAGE = "rbxasset://textures/gradient.png"
local FOOTER_GRADIENT_RECT_SIZE = Vector2.new(512, 256)

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local Analytics = require(Plugin.Src.Util.Analytics)

local Footer = Roact.PureComponent:extend("Footer")

function Footer:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local onClose = props.OnClose
	local mainButton = props.MainButton

	local nextScreen = props.NextScreen
	local nextScreenText = props.NextScreenText
	local openNextScreen = props.OpenNextScreen
	local isPublish = props.IsPublish

	local children = props[Roact.Children]

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, theme.FOOTER_HEIGHT),
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 0, 1, 0),
		ZIndex = 2,
	}, {
		Gradient = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 0, FOOTER_GRADIENT_SIZE),
			AnchorPoint = Vector2.new(0, 1),
			Image = FOOTER_GRADIENT_IMAGE,
			ImageRectSize = FOOTER_GRADIENT_RECT_SIZE,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ImageColor3 = theme.footer.gradient,
			ImageTransparency = FOOTER_GRADIENT_TRANSPARENCY,
			ZIndex = 1,
		}),

		SaveSettings = Roact.createElement(ButtonBar, {
			ZIndex = 2,
			Buttons = {
				{Name = "Cancel", Active = true, Value = false},
				{Name = mainButton.Name, Default = true, Active = mainButton.Active, Value = true},
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			buttonActivated = function(isMain)
				if isMain then
					mainButton.OnActivated()
				else
					Analytics.reportSaveCancel(isPublish)
					onClose()
				end
			end,
		}, children),

		GotoNextScreen = nextScreen ~= nil and Roact.createElement("TextButton", {
			Size = UDim2.new(0.15,0,0.5,0),
			Position = UDim2.new(0.13, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BorderSizePixel = 3,
			TextColor3 = theme.defaultButton.ButtonColor,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 20,
			Font = theme.footer.textbutton.font,
			Text = localization:getText("FooterButton", nextScreenText),

			[Roact.Event.Activated] = function()
				openNextScreen(nextScreen)
			end,
		}),
	})
end


Footer = withContext({
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})(Footer)



local function useDispatchForProps(dispatch)
	return {
		OpenNextScreen = function(screen)
			dispatch(SetScreen(screen))
		end,
	}
end

return RoactRodux.connect(nil, useDispatchForProps)(Footer)
