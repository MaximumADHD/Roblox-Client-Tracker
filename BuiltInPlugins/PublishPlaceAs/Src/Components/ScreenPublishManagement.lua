local FStringPlacePublishRollbackLearnMoreLink = game:GetFastString("PlacePublishRollbackLearnMoreLink")
local FFlagStudioEnableUploadNames = game:GetFastFlag("StudioEnableUploadNames")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)
local LoadGameConfiguration = require(Plugin.Src.Thunks.LoadGameConfiguration)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Resources.Constants)
local Separator = Framework.UI.Separator
local Footer = require(Plugin.Src.Components.Footer)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local ToggleButton = Framework.UI.ToggleButton
local TitledFrame = Framework.StudioUI.TitledFrame
local TextWithInlineLink = Framework.UI.TextWithInlineLink
local Pane = Framework.UI.Pane
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)
local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)
local getIsOptInChina = require(Plugin.Src.Util.PublishPlaceAsUtilities).getIsOptInChina
local StudioService = game:GetService("StudioService")
local StudioPublishService = game:GetService("StudioPublishService")
local GuiService = game:GetService("GuiService")
local layoutOrder = LayoutOrderIterator.new()

local ScreenPublishManagement = Roact.PureComponent:extend("ScreenPublishManagement")

local ROLLOUT_OPTION_DEFAULT = "Default"
local ROLLOUT_OPTION_FORCE = "Forced"

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

function ScreenPublishManagement:init()
	self.state = {
		rolloutOption = ROLLOUT_OPTION_DEFAULT,
		isRollBackAllowed = true,
		toggleDescriptionWidth = 500,
		showLearnMoreLink = string.len(FStringPlacePublishRollbackLearnMoreLink) > 0,
	}
	
	self.finishedConnection = nil
	self.descriptionRef = Roact.createRef()
	self.publishParameters = nil

	self.onResize = function()
		local descriptionWidthContainer = self.descriptionRef.current
		if not descriptionWidthContainer then
			return
		end

		self:setState({
			toggleDescriptionWidth = descriptionWidthContainer.AbsoluteSize.X
		})
	end
end

function ScreenPublishManagement:didMount()
	self.finishedConnection = StudioService.GamePublishFinished:connect(function(success)
		if success then
			self.props.OpenPublishSuccessfulPage(self.props.PlaceId, self.props.Name, self.props.ParentGame)
		else
			self.props.OpenPublishFailPage(self.props.PlaceId, self.props.Name, self.props.ParentGame, self.publishParameters)
		end
	end)

	local apiImpl = self.props.API:get()
	self.props.DispatchLoadGameConfiguration(self.props.ParentGame.universeId, apiImpl)
end

function ScreenPublishManagement:willUnmount()
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
end

function ScreenPublishManagement:render()
	local props = self.props
	local onClose = props.OnClose
	local theme = if THEME_REFACTOR then props.Stylizer else props.Theme:get("Plugin")
	local localization = props.Localization

	local name = props.Name
	local isPublishing = props.IsPublishing
	local parentGameName = props.ParentGameName
	local parentGame = props.ParentGame
	local placeId = props.PlaceId
	local optInRegions = props.OptInRegions
	local openChoosePlacePage = props.OpenChoosePlacePage

	local gameName = parentGame and parentGame.name or ""
	local headerText = localization:getText("ScreenHeader", "PublishManagement", {name, gameName}) --"How would you like to release the overwrite to {name} under {gameName}?"
	local rolloutOptionsText = localization:getText("General", "RolloutOption") --"RolloutOption"
	local footerMainButtonName = "Overwrite"
	local toggleDescriptionWidth = self.state.toggleDescriptionWidth
	local isOptInChina = getIsOptInChina(optInRegions)
	local showRolloutOption = not isOptInChina

	local rolloutOptionButtons = {}
	if showRolloutOption then
		table.insert(rolloutOptionButtons, {
			Id = ROLLOUT_OPTION_DEFAULT,
			Title = localization:getText("General", "RolloutOptionDefault"),
			Description = localization:getText("General", "RolloutOptionDefaultDesc"),
		})

		table.insert(rolloutOptionButtons, {
			Id = ROLLOUT_OPTION_FORCE,
			Title = localization:getText("General", "RolloutOptionForce"),
			Description = localization:getText("General", "RolloutOptionForceDesc"),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
	}, {
		PaneFrame = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
			BorderSizePixel = 0,
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Padding = 10,
			Spacing = 10,
			Layout = Enum.FillDirection.Vertical
		}, {
			Back = Roact.createElement(Pane, {
				Padding = 10,
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = 1,
			}, {
				Roact.createElement("ImageButton", {
					Image = theme.icons.backArrow,
					Size = UDim2.new(0, 20, 0, 20),
					Style = 0,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					[Roact.Event.Activated] = function()
						openChoosePlacePage(parentGame)
					end,
				})
			}),

			Separator1 = Roact.createElement(Separator, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 1),
			}),

			Header = Roact.createElement(Pane, {
				Padding = 10,
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = 3,
			}, {
				Roact.createElement("TextLabel", {
					Text = headerText,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = 20,
					BackgroundTransparency = 1,
					Font = theme.header.font,
					TextColor3 = theme.textColor,
				}),
			}),

			RolloutOptions = showRolloutOption and Roact.createElement(Pane, {
				Padding = 10,
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = 4,
			}, {
				RolloutOptionRadioButtonSet = Roact.createElement(RadioButtonSet, {
					LayoutOrder = layoutOrder:getNextOrder(),
					Buttons = rolloutOptionButtons,
					Enabled = true,
					Selected = self.state.rolloutOption,
					SelectionChanged = function(button)
						if button.Id == ROLLOUT_OPTION_DEFAULT then
							self:setState({
								rolloutOption = ROLLOUT_OPTION_DEFAULT
							})
						elseif button.Id == ROLLOUT_OPTION_FORCE then
							self:setState({
								rolloutOption = ROLLOUT_OPTION_FORCE
							})
						end
					end,
					Title = rolloutOptionsText,
				}),
			}),

			RollbackOptions = isOptInChina and Roact.createElement(Pane, {
				Padding = 10,
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = 5,
			}, {
				Roact.createElement(TitledFrame, {
					Font = theme.header.font,
					TextSize = 20,
					Title = localization:getText("General", "RollbackToggleTitle"), --'Enable Rollback to Previous Version',
					LayoutOrder = layoutOrder:getNextOrder(),
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					}),

					ToggleButton = Roact.createElement(ToggleButton, {
						Size = UDim2.new(0, theme.toggleButton.width, 0, theme.toggleButton.height),
						Selected = self.state.isRollBackAllowed,
						OnClick = function ()
							self:setState({
								isRollBackAllowed = not self.state.isRollBackAllowed
							})
							print('toggle Enable Rollback to Previous Version')
						end,
						LayoutOrder = layoutOrder:getNextOrder(),
					}),

					LinkText = Roact.createElement(TextWithInlineLink, {
						LinkText = self.state.showLearnMoreLink and localization:getText("General", "RollbackToggleDesclinkText") or "", --"Learn more"
						Text = localization:getText("General", "RollbackToggleDesc"), --"Enabling rollback to previous version if the overwrite is rejected {link}",
						LinkPlaceholder = "[link]",
						MaxWidth = toggleDescriptionWidth,
						LayoutOrder = layoutOrder:getNextOrder(),
						TextProps = {
							BackgroundTransparency = 1,
							Font = theme.header.font,
							TextSize = 16,
							TextXAlignment = Enum.TextXAlignment.Left,
						},
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						OnLinkClicked = function()
							if not self.state.showLearnMoreLink then 
								return
							end
							GuiService:OpenBrowserWindow(FStringPlacePublishRollbackLearnMoreLink)
						end,
					}),

					ToggleDescriptionWidth = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = layoutOrder:getNextOrder(),
						Size = UDim2.new(1,0,0,0),
						[Roact.Ref] = self.descriptionRef,
						[Roact.Change.AbsoluteSize] = self.onResize,
					}),
				}) -- title frame
			}) --rollout options pane
		}), -- frame

		Footer = Roact.createElement(Footer, {
			MainButton = {
				Name = footerMainButtonName,
				Active = parentGame and placeId ~= nil and not isPublishing,
				OnActivated = function()
					local publishParameters = {}
					if isOptInChina then
						publishParameters.IsOldVersionAllowed = self.state.isRollBackAllowed
					end
					if showRolloutOption then
						publishParameters.ShouldForceRestart = self.state.rolloutOption == ROLLOUT_OPTION_FORCE
					end
					self.publishParameters = publishParameters
					self.props.DispatchSetIsPublishing(true)
					if FFlagStudioEnableUploadNames then
						StudioPublishService:setUploadNames(name, parentGameName)
					end
					StudioPublishService:publishAs(parentGame.universeId, placeId, 0, true, publishParameters)
				end,
			},
			OnClose = onClose,
			NextScreen = nil,
		}),
	})
end

ScreenPublishManagement = withContext({
	Stylizer = if THEME_REFACTOR then ContextServices.Stylizer else nil,
	Theme = if (not THEME_REFACTOR) then ContextServices.Theme else nil,
	Localization = ContextServices.Localization,
	API = ContextServices.API,
})(ScreenPublishManagement)

local function mapStateToProps(state, props)
	local placeInfo = state.ExistingGame.placeInfo
	local place = placeInfo.places[1]
	local gameConfiguration = state.ExistingGame.gameConfiguration
	return {
		PlaceId = place.placeId,
		Name = place.name,
		-- universeId
		ParentGameName = placeInfo.parentGame.name,
		ParentGame = placeInfo.parentGame,
		OptInRegions = gameConfiguration.optInRegions,
	}
end

local function useDispatchForProps(dispatch)
	return {
		OpenChoosePlacePage = function(parentGame)
			dispatch(LoadExistingPlaces(parentGame))
			dispatch(SetScreen(Constants.SCREENS.CHOOSE_PLACE))
		end,
		OpenPublishSuccessfulPage = function(placeId, placeName, game)
			dispatch(SetPublishInfo({ id = placeId, name = placeName, parentGameName = game.name, }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_SUCCESSFUL))
		end,
		OpenPublishFailPage = function(placeId, placeName, game, publishParameters)
			dispatch(SetPublishInfo({ id = placeId, name = placeName, parentGameName = game.name, parentGameId = game.universeId, failed = true, publishParameters = publishParameters }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_FAIL))
		end,
		DispatchLoadGameConfiguration = function(universeId, apiImpl)
			dispatch(LoadGameConfiguration(universeId, apiImpl))
		end,
		DispatchSetIsPublishing = function(isPublishing)
			dispatch(SetIsPublishing(isPublishing))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenPublishManagement)
