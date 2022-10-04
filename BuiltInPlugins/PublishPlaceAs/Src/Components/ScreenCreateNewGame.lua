--[[

	Component for setting the details of the place we are publishing/saving.
	Allows the user to switch to overwriting an existing place

	Props:
		function OnClose - closure to run to close the QWidget dialog
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateScrollingFrame = SharedFlags.getFFlagDevFrameworkMigrateScrollingFrame()

local UILibrary = require(Plugin.Packages.UILibrary)

local UI = Framework.UI
local ScrollingFrame = if FFlagDevFrameworkMigrateScrollingFrame then UI.ScrollingFrame else UILibrary.Component.StyledScrollingFrame

local SettingsImpl = require(Plugin.Src.Network.Requests.SettingsImpl)

local Constants = require(Plugin.Src.Resources.Constants)

local Separator = Framework.UI.Separator

local MenuBar = require(Plugin.Src.Components.Menu.MenuBar)
local Footer = require(Plugin.Src.Components.Footer)
local BasicInfo = require(Plugin.Src.Components.BasicInfo)

local AddChange = require(Plugin.Src.Actions.AddChange)
local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)

local LoadGroups = require(Plugin.Src.Thunks.LoadGroups)

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations
local sendAnalyticsToKibana = require(Plugin.Src.Util.PublishPlaceAsUtilities).sendAnalyticsToKibana

local FIntLuobuDevPublishAnalyticsHundredthsPercentage = game:GetFastInt("LuobuDevPublishAnalyticsHundredthsPercentage")

local TextInputDialog = Framework.UI.TextInputDialog
local KeyProvider = require(Plugin.Src.Util.KeyProvider)
local optInLocationsKey = KeyProvider.getOptInLocationsKeyName()
local chinaKey = KeyProvider.getChinaKeyName()
local seriesNameKey = KeyProvider.getLuobuStudioDevPublishKeyName()
local selectedKey = KeyProvider.getSelectedKeyName()
local createNewGameKey = KeyProvider.getCreateNewGameKeyName()

local StudioPublishService = game:GetService("StudioPublishService")

local MENU_ENTRIES = {
	"BasicInfo",
}

local ScreenCreateNewGame = Roact.PureComponent:extend("ScreenCreateNewGame")

function ScreenCreateNewGame:init()
	self.state = {
		selected = 1,
		showEmailDialog = false,
		bottomText = "",
	}

	self.finishedConnection = nil

	self.changeSelection = function(index)
		self:setState({
			selected = index,
		})
	end

	self.scrollingFrameRef = Roact.createRef()

	self.shouldShowEmailDialog = function()
		local props = self.props
		-- 5/25/21 - ChangedOptInLocations is only set in Luobu Studio
		local changedOptInLocations = props.ChangedOptInLocations
		if changedOptInLocations then
			if changedOptInLocations[chinaKey] ~= nil then
				return changedOptInLocations[chinaKey]
			end
		end
		return false
	end
end

function ScreenCreateNewGame:didMount()
	self.finishedConnection = StudioPublishService.GamePublishFinished:connect(function(success, gameId)
		if success and gameId ~=0 then
			self.props.OpenPublishSuccessfulPage(self.props.Changed)
		else
			self.props.OpenPublishFailPage(self.props.Changed)
		end
	end)

	self.props.DispatchLoadGroups()
end

function ScreenCreateNewGame:willUnmount()
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
end

function ScreenCreateNewGame:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization
	local apiImpl = props.API:get()

	local onClose = props.OnClose
	local readyToSave = props.ReadyToSave
	local isPublishing = props.IsPublishing
	local changed = props.Changed
	local isPublish = props.IsPublish

	local dispatchSetIsPublishing = props.dispatchSetIsPublishing

	local selected = self.state.selected

	local canScroll = false

	local actionButtonLabel = nil
	if isPublish then 
		actionButtonLabel = "Create"
	else
		actionButtonLabel = "Save"
	end

	local nextScreenText = "UpdateExistingGame"

	local children = {
		MenuBar = Roact.createElement(MenuBar, {
			Entries = MENU_ENTRIES,
			Selected = selected,
			SelectionChanged = self.changeSelection,
		}),

		Separator = Roact.createElement(Separator, {
			Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0.5, 0),
			DominantAxis = Enum.DominantAxis.Height,
		}),

		Page = if not canScroll then Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
			Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT)
		}, {
			Roact.createElement(BasicInfo, {
				IsPublish = isPublish,
			}),
		}) else Roact.createElement(ScrollingFrame, {
			BackgroundTransparency = if FFlagDevFrameworkMigrateScrollingFrame then nil else 1,
			Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
			Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT),
			CanvasSize = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			[Roact.Ref] = self.scrollingFrameRef,
		}, {
			Roact.createElement(BasicInfo, {
				IsPublish = isPublish,
			}),
		}),

		Footer = Roact.createElement(Footer, {
			MainButton = {
				Name = actionButtonLabel,
				Active = readyToSave and not isPublishing,
				OnActivated = function()
					-- Make changes here before save happens to show dialog
					if shouldShowDevPublishLocations() and self.shouldShowEmailDialog() then
						self:setState({
							showEmailDialog = true,
						})
					else
						if shouldShowDevPublishLocations() then
							local points = {
								[optInLocationsKey] = chinaKey,
								[selectedKey] = false,
							}
							sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, createNewGameKey, points)
						end

						dispatchSetIsPublishing(true)
						SettingsImpl.saveAll(changed, localization, apiImpl, nil, isPublish)
					end
				end,
			},
			OnClose = onClose,
			NextScreen = Constants.SCREENS.CHOOSE_GAME,
			NextScreenText = nextScreenText,
			IsPublish = isPublish,
		}, {
			EmailDialog = Roact.createElement(TextInputDialog,
			{
				Enabled = self.state.showEmailDialog,
				Size = Vector2.new(theme.emailDialog.Size.X, theme.emailDialog.Size.Y),
				Title = localization:getText(optInLocationsKey, "EmailDialogHeader"),
				Header = localization:getText(optInLocationsKey, "EmailDialogHeader"),
				Buttons = {
					{Key = "Submit", Text = localization:getText("Button", "Submit")},
					{Key = "Cancel", Text = localization:getText("Button", "Cancel")},
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
						bottomText = "",
					})
				end,
				OnButtonPressed = function(buttonKey, email1, email2)
					local submitButtonPressed = buttonKey == "Submit"
					if submitButtonPressed then
						local points = {
							[optInLocationsKey] = chinaKey,
							[selectedKey] = true,
						}
						sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, createNewGameKey, points)
						if email1 == email2 then
							self:setState({
								showEmailDialog = false,
								bottomText = "",
							})
							dispatchSetIsPublishing(true)
							SettingsImpl.saveAll(changed, localization, apiImpl, email1, isPublish)
						else
							self:setState({
								bottomText = localization:getText(optInLocationsKey, "ErrorEmailNotEqual")
							})
						end
					else
						self:setState({
							showEmailDialog = false,
							bottomText = "",
						})
					end
				end,
			}),
		}),
	}
	if isPublish then
		children.Page = Roact.createElement(ScrollingFrame, {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
			Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT),
			CanvasSize = UDim2.new(1, -theme.MENU_BAR_WIDTH, if FFlagDevFrameworkMigrateScrollingFrame then 0 else 1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			[Roact.Ref] = self.scrollingFrameRef,
		}, {
			Roact.createElement(BasicInfo, {
				IsPublish = isPublish,
			}),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
	}, children)
end

ScreenCreateNewGame = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	API = ContextServices.API,
})(ScreenCreateNewGame)

local function mapStateToProps(state, props)
	local settings = state.NewGameSettings
	return {
		Changed = settings.changed,
		ReadyToSave = next(settings.errors) == nil,
		IsPublishing = state.PublishedPlace.isPublishing,
		ChangedOptInLocations = settings.changed.OptInLocations,
	}
end

local function useDispatchForProps(dispatch)
	return {
		OpenPublishSuccessfulPage = function(settings)
			dispatch(SetPublishInfo({ id = game.GameId, name = settings.name, parentGameName = settings.name }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_SUCCESSFUL))
		end,
		OpenPublishFailPage = function(settings)
			dispatch(SetPublishInfo({ id = game.GameId, name = settings.name, parentGameName = settings.name, parentGameId = 0, settings = settings, failed = true }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_FAIL))
		end,
		DispatchLoadGroups = function()
			dispatch(LoadGroups())
		end,
		dispatchSetIsPublishing = function(isPublishing)
			dispatch(SetIsPublishing(isPublishing))
		end,
		dispatchSetExistingUniverseConfiguration = function(universeConfig)
			dispatch(AddChange("name", universeConfig.name))
			if universeConfig.description then
				dispatch(AddChange("description", universeConfig.description))
			end
			if universeConfig.genre then
				dispatch(AddChange("genre", universeConfig.genre))
			end
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenCreateNewGame)
