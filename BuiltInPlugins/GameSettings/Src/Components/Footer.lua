--[[
	Footer shown at the bottom of the Game Settings widget.
	Contains the Save and Cancel buttons.

	Props:
		bool SaveActive = Whether or not saving is currently allowed.
			This will enable the Save button if true.
]]

local FOOTER_GRADIENT_SIZE = 3
local FOOTER_GRADIENT_TRANSPARENCY = 0.9

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Promise = require(Plugin.Promise)

local ContextServices = require(Plugin.Framework.ContextServices)
local SettingsImpl = require(Plugin.Src.Providers.SettingsImplContextItem)
local DialogProvider = require(Plugin.Src.Providers.DialogProviderContextItem)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local getMouse = require(Plugin.Src.Consumers.getMouse)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local ConfirmAndSaveChanges = require(Plugin.Src.Thunks.ConfirmAndSaveChanges)
local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Footer = Roact.PureComponent:extend("Footer")

function Footer:DEPRECATED_render()
	return withLocalization(function(localized)
		return withTheme(function(theme)
			local saveActive = self.props.SaveActive
			local cancelActive = self.props.CancelActive

			return Roact.createElement("Frame", {
				BackgroundColor3 = theme.backgroundColor,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.FOOTER_HEIGHT),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				ZIndex = 2,
			}, {
				Gradient = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 0, FOOTER_GRADIENT_SIZE),
					AnchorPoint = Vector2.new(0, 1),
					Image = DEPRECATED_Constants.GRADIENT_IMAGE,
					ImageRectSize = DEPRECATED_Constants.GRADIENT_RECT_SIZE,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					ImageColor3 = theme.footer.gradient,
					ImageTransparency = FOOTER_GRADIENT_TRANSPARENCY,
					ZIndex = 1,
				}),

				SaveSettings = Roact.createElement(ButtonBar, {
					ZIndex = 2,
					Buttons = {
						{Name = localized.Footer.Cancel, Active = cancelActive, Value = false},
						{Name = localized.Footer.Save, Default = true, Active = saveActive, Value = true},
					},
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					ButtonClicked = function(userPressedSave)
						getMouse(self).setHoverIcon("Wait", true)

						local resolved = self.props.ButtonClicked(userPressedSave, self):await()
						if resolved then
							self.props.OnClose(userPressedSave)
						end

						getMouse(self).resetMouse()
					end,
				}),
			})
		end)
	end)
end

function Footer:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
	local settingsImpl = props.SettingsImpl:get()
	local dialog = props.Dialog

	local saveActive = props.SaveActive
	local cancelActive = props.CancelActive

	local fflagNetworkRefactor = game:GetFastFlag("GameSettingsNetworkRefactor")
	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
		Size = fflagNetworkRefactor and UDim2.fromScale(1, 1) or UDim2.new(1, 0, 0, DEPRECATED_Constants.FOOTER_HEIGHT),
		AnchorPoint = (not fflagNetworkRefactor) and Vector2.new(0, 1) or nil,
		Position = (not fflagNetworkRefactor) and UDim2.new(0, 0, 1, 0) or nil,
		ZIndex = 2,
	}, {
		Gradient = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 0, FOOTER_GRADIENT_SIZE),
			AnchorPoint = Vector2.new(0, 1),
			Image = DEPRECATED_Constants.GRADIENT_IMAGE,
			ImageRectSize = DEPRECATED_Constants.GRADIENT_RECT_SIZE,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ImageColor3 = theme.footer.gradient,
			ImageTransparency = FOOTER_GRADIENT_TRANSPARENCY,
			ZIndex = 1,
		}),

		SaveSettings = Roact.createElement(ButtonBar, {
			ZIndex = 2,
			Buttons = {
				{Name = localization:getText("General", "ButtonCancel"), Active = cancelActive, Value = false},
				{Name = localization:getText("General", "ButtonSave"), Default = true, Active = saveActive, Value = true},
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			ButtonClicked = function(userPressedSave)
				-- TODO: change to use HoverArea from Developer Framework
				props.Mouse:__pushCursor("Wait")

				local resolved = self.props.ButtonClicked(userPressedSave, self, localization, settingsImpl, dialog):await()
				if resolved then
					self.props.OnClose(userPressedSave)
				end

				props.Mouse:__resetCursor()
			end,
		}),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(Footer,{
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
		SettingsImpl = SettingsImpl,
		Dialog = DialogProvider,
	})
end


Footer = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			SaveActive = not isEmpty(state.Settings.Changed)
				and state.Status == CurrentStatus.Open
				and isEmpty(state.Settings.Errors),
			CancelActive = state.Status == CurrentStatus.Open
		}
	end,
	function(dispatch)
		return {
			ButtonClicked = function(userPressedSave, provider, localization, settingsImpl, dialog)
				if userPressedSave then
					if FFlagStudioConvertGameSettingsToDevFramework then
						return dispatch(ConfirmAndSaveChanges(provider, localization, settingsImpl, dialog))
					else
						return dispatch(ConfirmAndSaveChanges(provider))
					end
				else
					return Promise.resolve()
				end
			end,
		}
	end
)(Footer)

return Footer
