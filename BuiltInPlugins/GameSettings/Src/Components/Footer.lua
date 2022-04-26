--[[
	Footer shown at the bottom of the Game Settings widget.
	Contains the Save and Cancel buttons.

	Props:
		bool SaveActive = Whether or not saving is currently allowed.
			This will enable the Save button if true.
]]
local FIntLuobuDevPublishAnalyticsHundredthsPercentage = game:GetFastInt("LuobuDevPublishAnalyticsHundredthsPercentage")
local FFlagGameSettingsDeduplicatePackages = game:GetFastFlag("GameSettingsDeduplicatePackages")

local FOOTER_GRADIENT_SIZE = 3
local FOOTER_GRADIENT_TRANSPARENCY = 0.9

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Promise = if FFlagGameSettingsDeduplicatePackages then Framework.Util.Promise else require(Plugin.Packages.Promise)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Dialog = require(Plugin.Src.ContextServices.Dialog)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local ConfirmAndSaveChanges = require(Plugin.Src.Thunks.ConfirmAndSaveChanges)
local PostContactEmail = require(Plugin.Src.Thunks.PostContactEmail)
local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local TextInputDialog = Framework.UI.TextInputDialog
local shouldShowDevPublishLocations = require(Plugin.Src.Util.GameSettingsUtilities).shouldShowDevPublishLocations
local sendAnalyticsToKibana = require(Plugin.Src.Util.GameSettingsUtilities).sendAnalyticsToKibana

local KeyProvider = require(Plugin.Src.Util.KeyProvider)
local optInLocationsKey = KeyProvider.getOptInLocationsKeyName()
local chinaKey = KeyProvider.getChinaKeyName()
local selectedKey = KeyProvider.getSelectedKeyName()
local footerKey = KeyProvider.getFooterKeyName()
local seriesNameKey = KeyProvider.getLuobuStudioDevPublishKeyName()

local Footer = Roact.PureComponent:extend("Footer")

function Footer:saveAllSettings(userPressedSave)
	local props = self.props
	local localization = props.Localization
	local dialog = props.Dialog

	if FFlagGameSettingsDeduplicatePackages then
		self.props.SaveAllSettings(userPressedSave, localization, dialog):andThen(function()
			self.props.OnClose(userPressedSave)
		end)
	else
		local resolved = self.props.SaveAllSettings(userPressedSave, localization, dialog):await()
		if resolved then
			self.props.OnClose(userPressedSave)
		end
	end
end

function Footer:init()
	self.shouldShowEmailDialog = function()
		local props = self.props
		-- 5/25/21 - CurrentOptInLocations and ChangedOptInLocations are only set in Luobu Studio
		local currentOptInLocations = props.CurrentOptInLocations
		local changedOptInLocations = props.ChangedOptInLocations

		if not currentOptInLocations then
			-- GameSettings basic info page has not been opened yet, so opt in locations do not exist
			assert(not changedOptInLocations)
			return false
		end

		if not currentOptInLocations[chinaKey][selectedKey] and changedOptInLocations then
			assert(changedOptInLocations[chinaKey][selectedKey], "China should be selected in Changed")
			return true
		end
		return false

	end

	self.state = {
		showEmailDialog = false,
		userPressedSave = false,
		bottomText = "",
	}
end

function Footer:render()
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")
	local localization = props.Localization

	local saveActive = props.SaveActive
	local cancelActive = props.CancelActive

	local postContactEmail = props.PostContactEmail

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
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
				-- Make changes here before save happens to show dialog
				if userPressedSave and shouldShowDevPublishLocations() and self.shouldShowEmailDialog() then
					self:setState({
						showEmailDialog = true,
						userPressedSave = userPressedSave,
					})
				else
					if userPressedSave and shouldShowDevPublishLocations() and self.props.CurrentOptInLocations then
						if self.props.CurrentOptInLocations[chinaKey][selectedKey] then
							local points = {
								[optInLocationsKey] = chinaKey,
							}
							if not self.props.ChangedOptInLocations then
								points.selected = true
							else
								assert(not self.props.ChangedOptInLocations[chinaKey][selectedKey])
								points.selected = false
							end
							sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, footerKey, points)
						end
					end
					self:saveAllSettings(userPressedSave)
				end
			end,
		}, {
			EmailDialog = Roact.createElement(TextInputDialog,
			{
				Enabled = self.state.showEmailDialog,
				Size = Vector2.new(theme.emailDialog.Size.X, theme.emailDialog.Size.Y),
				Title = localization:getText(optInLocationsKey, "EmailDialogHeader"),
				Header = localization:getText(optInLocationsKey, "EmailDialogHeader"),
				Buttons = {
					{Key = "Submit", Text = localization:getText("General", "ButtonSubmit")},
					{Key = "Cancel", Text = localization:getText("General", "ButtonCancel")},
				},
				Body = localization:getText(optInLocationsKey, "EmailDialogBody"),
				Description = localization:getText(optInLocationsKey, "EmailDialogDescription"),
				TextInput = {
					{PlaceholderText = localization:getText(optInLocationsKey, "EmailAddress"),},
					{PlaceholderText = localization:getText(optInLocationsKey, "ConfirmEmailAddress"), BottomText = self.state.bottomText,},
				},
				OnClose = function()
					self:setState({
						showEmailDialog = false,
						userPressedSave = false,
						bottomText = "",
					})
				end,
				OnButtonPressed = function(buttonKey, email1, email2)
					local submitButtonPressed = buttonKey == "Submit"
					if submitButtonPressed then
						if email1 == email2 then
							local points = {
								[optInLocationsKey] = chinaKey,
								[selectedKey] = true,
							}
							sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, footerKey, points)
							local responseCode = postContactEmail(email1)
							if not responseCode then
								self:saveAllSettings(self.state.userPressedSave)
								self:setState({
									showEmailDialog = false,
									userPressedSave = false,
									bottomText = "",
								})
							else
								local message = localization:getText(optInLocationsKey, "EmailSubmitFailure") .. responseCode
								warn(message)
							end
						else
							self:setState({
								bottomText = localization:getText(optInLocationsKey, "ErrorEmailNotEqual")
							})
						end
					else
						self:setState({
							showEmailDialog = false,
							userPressedSave = false,
							bottomText = "",
						})
					end
				end,
			}),
		}),
	})
end

Footer = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Localization = ContextServices.Localization,
	Dialog = Dialog,
})(Footer)

Footer = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			SaveActive = not isEmpty(state.Settings.Changed)
				and state.Status == CurrentStatus.Open
				and isEmpty(state.Settings.Errors),
			CancelActive = state.Status == CurrentStatus.Open,
			CurrentOptInLocations = state.Settings.Current[optInLocationsKey],
			ChangedOptInLocations = state.Settings.Changed[optInLocationsKey],
		}
	end,
	function(dispatch)
		return {
			SaveAllSettings = function(userPressedSave, ...)
				if userPressedSave then
					return dispatch(ConfirmAndSaveChanges(...))
				else
					return Promise.resolve()
				end
			end,

			PostContactEmail = function(contactEmail)
				return dispatch(PostContactEmail(contactEmail))
			end,
		}
	end
)(Footer)

return Footer
