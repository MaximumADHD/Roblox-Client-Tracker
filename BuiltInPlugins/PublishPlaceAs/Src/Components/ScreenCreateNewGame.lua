--[[

	Component for setting the details of the place we are publishing/saving.
	Allows the user to switch to overwriting an existing place

	Props:
		function OnClose - closure to run to close the QWidget dialog
		table FirstPublishContext - set only when doing "first publish after save"
			This table contain 2 elements, universeId and placeId
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
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

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagStudioPromptOnFirstPublish = game:GetFastFlag("StudioPromptOnFirstPublish")
local FFlagStudioNewGamesInCloudUI = game:GetFastFlag("StudioNewGamesInCloudUI")

local MENU_ENTRIES = {
	"BasicInfo",
}

local ScreenCreateNewGame = Roact.PureComponent:extend("ScreenCreateNewGame")

function ScreenCreateNewGame:init()
	self.state = {
		selected = 1,
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
end

function ScreenCreateNewGame:didMount()
	self.finishedConnection = StudioService.GamePublishFinished:connect(function(success, gameId)
        if gameId ~= 0 then
            if success then
                self.props.OpenPublishSuccessfulPage(self.props.Changed)
            else
                self.props.OpenPublishFailPage(self.props.Changed)
            end
        end
	end)
end

function ScreenCreateNewGame:willUnmount()
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
end

function ScreenCreateNewGame:render(props)
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

			local actionButtonLabel = "Create"
			if FFlagStudioNewGamesInCloudUI then
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
							dispatchSetIsPublishing(true)
						end,
					},
					OnClose = onClose,
					NextScreen = Constants.SCREENS.CHOOSE_GAME,
					NextScreenText = nextScreenText,
					IsLocalSaveButton = replaceUpdateWithLocalSave,
				}),
			}

			if FFlagStudioAllowRemoteSaveBeforePublish then
				children.Page = Roact.createElement(StyledScrollingFrame, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, theme.MENU_BAR_WIDTH, 0, 0),
					Size = UDim2.new(1, -theme.MENU_BAR_WIDTH, 1, -theme.FOOTER_HEIGHT),
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

local function mapStateToProps(state, props)
	local settings = state.NewGameSettings
	return {
		Changed = settings.changed,
		ReadyToSave = next(settings.errors) == nil,
		IsPublishing = state.PublishedPlace.isPublishing,
	}
end


local function useDispatchForProps(dispatch)
	return {
		OpenPublishSuccessfulPage = function(settings)
			dispatch(SetPublishInfo({ id = game.GameId, name = settings.name, parentGameName = settings.name }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_SUCCESSFUL))
		end,
		OpenPublishFailPage = function(settings)
			dispatch(SetPublishInfo({ id = game.GameId, name = settings.name, parentGameName = settings.name, parentGameId = 0, settings = settings }))
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
