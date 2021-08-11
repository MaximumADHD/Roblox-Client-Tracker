--[[

	Component for setting the details of the place we are publishing/saving.
	Allows the user to switch to overwriting an existing place

	Props:
		function OnClose - closure to run to close the QWidget dialog
		table FirstPublishContext - set only when doing "first publish after save"
			This table contain 2 elements, universeId and placeId
]]
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")
local FFlagPublishPlaceAsWithContext = game:GetFastFlag("PublishPlaceAsWithContext")
local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame

local Configuration = require(Plugin.Src.Network.Requests.Configuration)
local SettingsImpl = require(Plugin.Src.Network.Requests.SettingsImpl)

local Theming = require(Plugin.Src.ContextServices.Theming)

local Constants = require(Plugin.Src.Resources.Constants)

local Separator = UILibrary.Component.Separator
local Localizing = UILibrary.Localizing

local MenuBar = require(Plugin.Src.Components.Menu.MenuBar)
local Footer = require(Plugin.Src.Components.Footer)
local BasicInfo = require(Plugin.Src.Components.BasicInfo)

local AddChange = require(Plugin.Src.Actions.AddChange)
local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)

local LoadGroups = require(Plugin.Src.Thunks.LoadGroups)

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations
local Analytics = require(Plugin.Src.Util.Analytics)

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagStudioUseNewSavePlaceWorkflow = game:GetFastFlag("StudioUseNewSavePlaceWorkflow")
local FFlagStudioPromptOnFirstPublish = game:GetFastFlag("StudioPromptOnFirstPublish")
local FFlagStudioNewGamesInCloudUI = game:GetFastFlag("StudioNewGamesInCloudUI")
local FFlagStudioClosePromptOnLocalSave = game:GetFastFlag("StudioClosePromptOnLocalSave")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")
local FFlagTextInputDialogDevFramework = game:GetFastFlag("TextInputDialogDevFramework")

local FFlagStudioEnableNewGamesInTheCloudMetrics = game:GetFastFlag("StudioEnableNewGamesInTheCloudMetrics")

local TextInputDialog = FFlagLuobuDevPublishLua and require(Framework.UI.TextInputDialog) or nil
local KeyProvider = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and require(Plugin.Src.Util.KeyProvider) or nil
local optInLocationsKey = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and KeyProvider.getOptInLocationsKeyName() or nil
local chinaKey = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and KeyProvider.getChinaKeyName() or nil

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

	if FFlagStudioPromptOnFirstPublish and self.props.FirstPublishContext ~= nil then
		local success, existingConfig = Configuration.Get(self.props.FirstPublishContext.universeId):await()
		if success then
			self.props.dispatchSetExistingUniverseConfiguration(existingConfig)
		end
	else
		self.props.DispatchLoadGroups()
	end

	if FFlagStudioClosePromptOnLocalSave then
		StudioService.SaveLocallyAsComplete:connect(function(success)
			if success then
				if FFlagStudioEnableNewGamesInTheCloudMetrics then
					Analytics.reportLocalSaveSuccess()
				end
				-- Close out the publish window after a local save
				self.props.OnClose()
				StudioService:requestClose(self.props.CloseMode)
			end
		end)
	end

	self.shouldShowEmailDialog = FFlagLuobuDevPublishLua and function()
		local props = self.props
		-- 5/25/21 - ChangedOptInLocations is only set in Luobu Studio
		local changedOptInLocations = props.ChangedOptInLocations
		if changedOptInLocations then
			if changedOptInLocations[chinaKey] ~= nil then
				return changedOptInLocations[chinaKey]
			end
		end
		return false
	end or nil
end

function ScreenCreateNewGame:didMount()
	self.finishedConnection = StudioService.GamePublishFinished:connect(function(success, gameId)
		if success and gameId ~=0 then
			self.props.OpenPublishSuccessfulPage(self.props.Changed)
		else
			self.props.OpenPublishFailPage(self.props.Changed)
		end
	end)
end

function ScreenCreateNewGame:willUnmount()
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
end

function ScreenCreateNewGame:render()
	if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
		local props = self.props
		local theme = props.Theme:get("Plugin")
		local localization = props.Localization
		local apiImpl = FFlagLuobuDevPublishLua and props.API:get() or nil

		local onClose = props.OnClose
		local readyToSave = props.ReadyToSave
		local isPublishing = props.IsPublishing
		local changed = props.Changed
		local isPublish = props.IsPublish
		local firstPublishContext = props.FirstPublishContext

		local dispatchSetIsPublishing = props.dispatchSetIsPublishing

		local selected = self.state.selected

		-- This is the vertical size of all publish page elements added together
		-- There isn't a way to automatically calculate this based on contents
		local publishCanvasHeight = 780

		local canScroll = not FFlagStudioAllowRemoteSaveBeforePublish and (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and shouldShowDevPublishLocations()

		local actionButtonLabel = "Create"
		if FFlagStudioNewGamesInCloudUI and (isPublish == false) then
			actionButtonLabel = "Save"
		end

		local replaceUpdateWithLocalSave = FFlagStudioAllowRemoteSaveBeforePublish and (isPublish == false)
		local nextScreenText = "UpdateExistingGame"
		if replaceUpdateWithLocalSave then
			nextScreenText = "SaveToFile"
		end

		local children = {
			MenuBar = Roact.createElement(MenuBar, {
				Entries = MENU_ENTRIES,
				Selected = selected,
				SelectionChanged = self.changeSelection,
			}),

			Separator = Roact.createElement(Separator, {
				Weight = 3,
				Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0.5, 0),
				DominantAxis = Enum.DominantAxis.Height,
			}),

			Page = not canScroll and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
				Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT)
			}, {
				Roact.createElement(BasicInfo, {
					IsPublish = isPublish,
				}),
			}) or Roact.createElement(StyledScrollingFrame, {
				BackgroundTransparency = 1,
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
						if FFlagStudioPromptOnFirstPublish and firstPublishContext then
							if FFlagLuobuDevPublishLua and FFlagTextInputDialogDevFramework then
								if shouldShowDevPublishLocations() and self.shouldShowEmailDialog() then
									self:setState({
										showEmailDialog = true,
									})
								else
									SettingsImpl.saveAll(changed, localization, firstPublishContext.universeId, firstPublishContext.placeId)
								end
							else
								SettingsImpl.saveAll(changed, localization, firstPublishContext.universeId, firstPublishContext.placeId)
							end
						else
							-- Make changes here before save happens to show dialog
							if FFlagLuobuDevPublishLua and FFlagTextInputDialogDevFramework then
								if shouldShowDevPublishLocations() and self.shouldShowEmailDialog() then
									self:setState({
										showEmailDialog = true,
									})
								else
									SettingsImpl.saveAll(changed, localization)
								end
							else
								SettingsImpl.saveAll(changed, localization)
							end
						end
						if FFlagStudioUseNewSavePlaceWorkflow and FFlagStudioEnableNewGamesInTheCloudMetrics and isPublish then
							Analytics.reportInitialPerms(changed.isActive, changed.isFriendsOnly)
						end
						if not (FFlagLuobuDevPublishLua and FFlagTextInputDialogDevFramework and shouldShowDevPublishLocations() and self.shouldShowEmailDialog()) then
							dispatchSetIsPublishing(true)
						end
					end,
				},
				OnClose = onClose,
				NextScreen = Constants.SCREENS.CHOOSE_GAME,
				NextScreenText = nextScreenText,
				IsLocalSaveButton = replaceUpdateWithLocalSave,
				IsPublish = isPublish,
			}, {
				EmailDialog = FFlagLuobuDevPublishLua and FFlagTextInputDialogDevFramework and Roact.createElement(TextInputDialog,
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
							if email1 == email2 then
								if firstPublishContext then
									SettingsImpl.saveAll(changed, localization, firstPublishContext.universeId, firstPublishContext.placeId, apiImpl, email1)
								else
									SettingsImpl.saveAll(changed, localization, nil, nil, apiImpl, email1)
								end
								dispatchSetIsPublishing(true)
								self:setState({
									showEmailDialog = false,
									bottomText = "",
								})
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
				}) or nil
			}),
		}

		if FFlagStudioAllowRemoteSaveBeforePublish and isPublish then
			children.Page = Roact.createElement(StyledScrollingFrame, {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
				Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT),
				CanvasSize = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, 0) or UDim2.new(1, -theme.MENU_BAR_WIDTH, 0, publishCanvasHeight),
				AutomaticCanvasSize = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and Enum.AutomaticSize.Y or nil,
				[Roact.Ref] = self.scrollingFrameRef,
			}, {
				Roact.createElement(BasicInfo, {
					IsPublish = isPublish,
					IsFirstPublish = firstPublishContext ~= nil,
				}),
			})
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, children)
	else
		return Theming.withTheme(function(theme)
			return Localizing.withLocalization(function(localization)
				local props = self.props

				local onClose = props.OnClose
				local readyToSave = props.ReadyToSave
				local isPublishing = props.IsPublishing
				local changed = props.Changed
				local isPublish = props.IsPublish
				local firstPublishContext = props.FirstPublishContext

				local dispatchSetIsPublishing = props.dispatchSetIsPublishing

				local selected = self.state.selected

				-- This is the vertical size of all publish page elements added together
				-- There isn't a way to automatically calculate this based on contents
				local publishCanvasHeight = 780

				local actionButtonLabel = "Create"
				if FFlagStudioNewGamesInCloudUI and (isPublish == false) then
					actionButtonLabel = "Save"
				end

				local replaceUpdateWithLocalSave = FFlagStudioAllowRemoteSaveBeforePublish and (isPublish == false)
				local nextScreenText = "UpdateExistingGame"
				if replaceUpdateWithLocalSave then
					nextScreenText = "SaveToFile"
				end

				local children = {
					MenuBar = Roact.createElement(MenuBar, {
						Entries = MENU_ENTRIES,
						Selected = selected,
						SelectionChanged = self.changeSelection,
					}),

					Separator = Roact.createElement(Separator, {
						Weight = 3,
						Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0.5, 0),
						DominantAxis = Enum.DominantAxis.Height,
					}),

					Page = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
						Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT)
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
								if FFlagStudioPromptOnFirstPublish and firstPublishContext then
									SettingsImpl.saveAll(changed, localization, firstPublishContext.universeId, firstPublishContext.placeId)
								else
									SettingsImpl.saveAll(changed, localization)
								end
								if FFlagStudioUseNewSavePlaceWorkflow and FFlagStudioEnableNewGamesInTheCloudMetrics and isPublish then
									Analytics.reportInitialPerms(changed.isActive, changed.isFriendsOnly)
								end
								dispatchSetIsPublishing(true)
							end,
						},
						OnClose = onClose,
						NextScreen = Constants.SCREENS.CHOOSE_GAME,
						NextScreenText = nextScreenText,
						IsLocalSaveButton = replaceUpdateWithLocalSave,
						IsPublish = isPublish,
					}),
				}

				if FFlagStudioAllowRemoteSaveBeforePublish and isPublish then

					children.Page = Roact.createElement(StyledScrollingFrame, {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
						Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT),
						CanvasSize = UDim2.new(1, -theme.MENU_BAR_WIDTH, 0, publishCanvasHeight),
						[Roact.Ref] = self.scrollingFrameRef,
					}, {
						Roact.createElement(BasicInfo, {
							IsPublish = isPublish,
							IsFirstPublish = firstPublishContext ~= nil,
						}),
					})
				end

				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.backgroundColor,
				}, children)
			end)
		end)
	end
end

if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
	if FFlagPublishPlaceAsWithContext then
		ScreenCreateNewGame = withContext({
			Theme = ContextServices.Theme,
			Localization = ContextServices.Localization,
			API = FFlagLuobuDevPublishLua and ContextServices.API or nil,
		})(ScreenCreateNewGame)
	else
		ContextServices.mapToProps(ScreenCreateNewGame,{
			Theme = ContextServices.Theme,
			Localization = ContextServices.Localization,
			API = FFlagLuobuDevPublishLua and ContextServices.API or nil,
		})
	end

end

local function mapStateToProps(state, props)
	local settings = state.NewGameSettings
	return {
		Changed = settings.changed,
		ReadyToSave = next(settings.errors) == nil,
		IsPublishing = state.PublishedPlace.isPublishing,
		ChangedOptInLocations = FFlagLuobuDevPublishLua and settings.changed.OptInLocations or {},
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
