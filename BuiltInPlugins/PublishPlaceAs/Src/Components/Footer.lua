--[[
	Footer shown at the bottom of the Game Settings widget.
	Contains the Save and Cancel buttons.

	Props:
		bool SaveActive = Whether or not saving is currently allowed.
			This will enable the Save button if true.
]]
local FOOTER_GRADIENT_SIZE = 3
local FOOTER_GRADIENT_TRANSPARENCY = 0.9
local FOOTER_GRADIENT_IMAGE = "rbxasset://textures/gradient.png"
local FOOTER_GRADIENT_RECT_SIZE = Vector2.new(512, 256)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local Constants = require(Plugin.Src.Resources.Constants)
local SettingsImpl = require(Plugin.Src.Network.Requests.SettingsImpl)

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local function Footer(props)
	return Localizing.withLocalization(function(localization)
		return Theming.withTheme(function(theme)
			local saveActive = props.SaveActive
			local cancelActive = props.CancelActive
			local onClose = props.OnClose
			local nextScreen = props.NextScreen
			local nextScreenText = props.NextScreenText
			local settings = props.Settings

			local openNextScreen = props.OpenNextScreen

			return Roact.createElement("Frame", {
				BackgroundColor3 = theme.backgroundColor,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, Constants.FOOTER_HEIGHT),
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
						{Name = "Cancel", Active = cancelActive, Value = false},
						{Name = "Save", Default = true, Active = saveActive, Value = true},
					},
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					buttonClicked = function(userPressedSave)
						if userPressedSave then
							SettingsImpl.saveAll(settings, onClose)
						else
							onClose()
						end
					end,
				}),

				GotoNextScreen = nextScreen ~= nil and Roact.createElement("TextButton", {
					Size = UDim2.new(0.15,0,0.5,0),
					Position = UDim2.new(0.13, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BorderSizePixel = 3,
					TextColor3 = theme.defaultButton.ButtonColor,
					BackgroundTransparency = 1,
					TextSize = 15,
					Font = theme.footer.textbutton.font,
					Text = localization:getText("Button", nextScreenText),

					[Roact.Event.Activated] = function()
						openNextScreen(nextScreen)
					end,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	local readyToSave = true
	if not state.NewGameSettings.changed.name then
		readyToSave = false
	end
	if not state.NewGameSettings.changed.genre then
		readyToSave = false
	end
	if next(state.NewGameSettings.errors) then
		readyToSave = false
	end
	if state.Screen.screen ~= Constants.SCREENS.CREATE_NEW_GAME then
		readyToSave = false
	end
	return {
		SaveActive = readyToSave,
		Settings = state.NewGameSettings.changed,
	}
end

local function useDispatchForProps(dispatch)
	return {
		OpenNextScreen = function(screen)
			dispatch(SetScreen(screen))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(Footer)
