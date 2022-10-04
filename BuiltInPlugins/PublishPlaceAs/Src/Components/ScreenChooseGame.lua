--[[
	Let the user select a universe to write this place into

	Allow the user to go back to publishing a new place
	Allow the user to pick a universe to overwrite a place in

]]
local FFlagPlacePublishManagementUI2 = game:GetFastFlag("PlacePublishManagementUI2")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()
local FFlagRemoveUILibraryLoadingIndicator = SharedFlags.getFFlagRemoveUILibraryLoadingIndicator()
local FFlagDevFrameworkMigrateScrollingFrame = SharedFlags.getFFlagDevFrameworkMigrateScrollingFrame()

local Constants = require(Plugin.Src.Resources.Constants)

local LoadExistingGames = require(Plugin.Src.Thunks.LoadExistingGames)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)
local LoadGroups = require(Plugin.Src.Thunks.LoadGroups)
local LoadGameConfiguration = require(Plugin.Src.Thunks.LoadGameConfiguration)
local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Footer = require(Plugin.Src.Components.Footer)
local TileGame = require(Plugin.Src.Components.TileGame)

local StyledDropDown = UILibrary.Component.StyledDropdown

local UI = Framework.UI
local Button = if FFlagRemoveUILibraryButton then UI.Button else UILibrary.Component.RoundTextButton
local LoadingIndicator = if FFlagRemoveUILibraryLoadingIndicator then UI.LoadingIndicator else UILibrary.Component.LoadingIndicator
local ScrollingFrame = if FFlagDevFrameworkMigrateScrollingFrame then UI.ScrollingFrame else UILibrary.Component.InfiniteScrollingFrame

local SearchBar = Framework.StudioUI.SearchBar
local Separator = Framework.UI.Separator

local ScreenChooseGame = Roact.PureComponent:extend("ScreenChooseGame")
local SelectedItemKey = 0
local SelectedItemType = Constants.SUBJECT_TYPE.USER
local SelectedItemText = nil

function ScreenChooseGame:init()
	self.state = {
		searchTerm = ""
	}
	self.props.DispatchLoadExistingGames(SelectedItemType, SelectedItemKey)
	self.props.DispatchLoadGroups()
	--self.layoutRef = Roact.createRef()

	self.OnSearchRequested = function(searchTerm)
		self:setState({
			searchTerm = searchTerm
		})
	end
end

function ScreenChooseGame:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	local onClose = props.OnClose

	local games = props.Games
	local nextPageCursor = props.NextPageCursor
	local groups = props.Groups

	local dispatchLoadExistingGames = props.DispatchLoadExistingGames
	local openChoosePlacePage = props.OpenChoosePlacePage

	local myGamesText = localization:getText("GroupDropdown", "MyGames")

	local dropdownItems = { { Type = Constants.SUBJECT_TYPE.USER, Key = 0, Text = myGamesText, }, }

	if groups and next(groups) ~= nil then
		for _, group in pairs(groups) do
			table.insert(dropdownItems, { Type = Constants.SUBJECT_TYPE.GROUP, Key = group.groupId, Text = group.name, })
		end
	end

	local dropdownDisplayText = SelectedItemText or dropdownItems[1].Text

	local components = {
		Roact.createElement("UIGridLayout", {
			CellSize = UDim2.new(0, theme.SCREEN_CHOOSE_GAME.ICON_SIZE, 0,
				theme.SCREEN_CHOOSE_GAME.ICON_SIZE + theme.SCREEN_CHOOSE_GAME.TILE_FOOTER_SIZE),
			CellPadding = UDim2.new(0, theme.SCREEN_CHOOSE_GAME.CELL_PADDING_X, 0, theme.SCREEN_CHOOSE_GAME.CELL_PADDING_Y),
			SortOrder = Enum.SortOrder.LayoutOrder,
			[Roact.Ref] = self.layoutRef,
		})
	}

	if props.GamesQueryState == Constants.QUERY_STATE.QUERY_STATE_SUCCESS then
		for _, game in pairs(games) do
			-- TODO: (smallick) 2020/08/26
			-- We should query using the endpoint and not manually
			-- However, as the endpoint does not currently support searching keywords we can filter using string.find
			if string.find(game.name:lower(), self.state.searchTerm:lower()) then
				components[#components + 1] = Roact.createElement(TileGame, {
					Name = game.name,
					Id = game.rootPlaceId,
					State = game.privacyType,
					LayoutOrder = #components + 1,
					OnActivated = function()
						openChoosePlacePage(game, FFlagPlacePublishManagementUI2 and self.props.API:get() or nil)
					end,
				})
			end
		end
	end

	local TILE_HEIGHT = (theme.SCREEN_CHOOSE_GAME.ICON_SIZE + theme.SCREEN_CHOOSE_GAME.TILE_FOOTER_SIZE + theme.SCREEN_CHOOSE_GAME.CELL_PADDING_Y)

	-- TODO: (smallick) 2020/07/27
	-- Replace this with layoutRef
	-- Manually calculating CanvasHeight for now
	local canvasSize = math.ceil((#components - 1)/5) * TILE_HEIGHT
	-- Force atleast 3 rows to show up to force scroll to appear. Further search results can be taken care of by ScrollingFrame
	-- nextPageFunc
	if canvasSize < 3 * TILE_HEIGHT then
		if nextPageCursor and SelectedItemType and SelectedItemKey then
			dispatchLoadExistingGames(SelectedItemType, SelectedItemKey, nextPageCursor)
		end
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
	}, {
		ChooseGameText = Roact.createElement("TextLabel", {
			Text = localization:getText("ScreenHeader", "ChooseGameNew"),
			Position = UDim2.new(0, 30, 0, 25),
			BackgroundTransparency = 1,
			TextColor3 = theme.header.text,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = theme.header.font,
			TextSize = 18,
		}),

		Sep1 = Roact.createElement(Separator, {
			Position = UDim2.new(0.5, 0, 0, 50),
		}),

		SearchBar = Roact.createElement("Frame", {
			Position = UDim2.new(0.6, 4, 0, 70),
			Size = UDim2.new(0, theme.DROPDOWN_WIDTH - 10, 0, theme.DROPDOWN_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement(SearchBar, {
				Size = UDim2.new(1, 0, 1, 0),
				ShowSearchIcon = true,
				ShowSearchButton = false,
				IncrementalTextSearch = true,
				OnSearchRequested = self.OnSearchRequested,
			}),
		}),

		GroupDropdown = Roact.createElement(StyledDropDown, {
			Size = UDim2.new(0, theme.DROPDOWN_WIDTH, 0, theme.DROPDOWN_HEIGHT),
			Position = UDim2.new(0, 30, 0, 70),
			ItemHeight = 38,
			ButtonText = dropdownDisplayText,
			Items = dropdownItems,
			MaxItems = 4,
			TextSize = 18,
			SelectedItem = SelectedItemKey,
			ShowRibbon = not theme.isDarkerTheme,
			OnItemClicked = function(item)
				if item.Key ~= SelectedItemKey then
					SelectedItemKey = item.Key
					SelectedItemType = item.Type
					SelectedItemText = item.Text
					dispatchLoadExistingGames(item.Type, item.Key)
				end
			end,
			ListWidth = 330,
		}),

		MainContentsSuccess = (props.GamesQueryState == Constants.QUERY_STATE.QUERY_STATE_SUCCESS)
			and Roact.createElement(ScrollingFrame, {
				AutomaticCanvasSize = if FFlagDevFrameworkMigrateScrollingFrame then Enum.AutomaticSize.Y else nil,
				Position = UDim2.new(0, 30, 0, 115),
				Size = UDim2.new(0.95, 0, 0.7, 0),
				BackgroundTransparency = if FFlagDevFrameworkMigrateScrollingFrame then nil else 1,

				CanvasHeight = if FFlagDevFrameworkMigrateScrollingFrame then nil else canvasSize,

				NextPageRequestDistance = 100,
				NextPageFunc = function()
					if nextPageCursor and SelectedItemType and SelectedItemKey then
						dispatchLoadExistingGames(SelectedItemType, SelectedItemKey, nextPageCursor)
					end
				end,
			}, components),

		MainContentsQuerying = (props.GamesQueryState == Constants.QUERY_STATE.QUERY_STATE_QUERYING)
			and Roact.createElement("Frame", {
				Position = UDim2.new(0, 30, 0, 115),
				Size = UDim2.new(0.95, 0, 0.7, 0),
				BackgroundColor3 = theme.backgroundColor,
			}, {
				Roact.createElement(LoadingIndicator, {
					Position = UDim2.new(0.5, -100, 0, 115),
					Size = UDim2.new(0, 200, 0, 50),
				})
			}),

		MainContentsFailed = (props.GamesQueryState == Constants.QUERY_STATE.QUERY_STATE_FAILED)
			and Roact.createElement("Frame", {
				Position = UDim2.new(0, 30, 0, 115),
				Size = UDim2.new(0.95, 0, 0.7, 0),
				BackgroundColor3 = theme.backgroundColor,
			},
				{
					Roact.createElement("TextLabel", {
						Text = localization:getText("General", "FetchFailed"),
						Position = UDim2.new(0.5, 0, 0, 50),
						TextSize = 24,
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextColor3 = theme.failText.text,
						Font = theme.failText.font,
					}),
					Roact.createElement(Button, if FFlagRemoveUILibraryButton then {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0, 100),
						Size = UDim2.new(0, 150, 0, 75),
						Style = "Round",
						Text = localization:getText("Button", "Retry"),
						OnClick = function()
							dispatchLoadExistingGames(SelectedItemType, SelectedItemKey)
						end
					} else {
						Position = UDim2.new(0.5, 0, 0, 100),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Style = theme.defaultButton,
						Size = UDim2.new(0, 150, 0, 75),
						Active = true,
						Name = localization:getText("Button", "Retry"),
						TextSize = Constants.TEXT_SIZE,
						OnClicked = function()
							dispatchLoadExistingGames(SelectedItemType, SelectedItemKey)
						end
					})
				}
			),

		Footer = Roact.createElement(Footer, {
			MainButton = {
				Name = "Create",
				Active = false,
			},
			OnClose = onClose,
			NextScreen = Constants.SCREENS.CREATE_NEW_GAME,
			NextScreenText  = "CreateNewGame",
		}),
	})
end

function ScreenChooseGame:willUnmount()
	for key, _ in pairs(self.props.Games) do self.props.Games[key] = nil end
end

ScreenChooseGame = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	API = ContextServices.API,
})(ScreenChooseGame)

local function mapStateToProps(state, props)
	local gameInfo = state.ExistingGame.gameInfo
	local groupInfo = state.GroupsHavePermission.groupInfo

	return {
		NextPageCursor = gameInfo.nextPageCursor,
		Games = gameInfo.games,
		Groups = groupInfo.groups,
		GamesQueryState = gameInfo.queryState,
	}
end

local function useDispatchForProps(dispatch)
	return {
		DispatchLoadGroups = function()
			dispatch(LoadGroups())
		end,
		DispatchLoadExistingGames = function(type, id, cursor)
			dispatch(LoadExistingGames(type, id, cursor))
		end,
		OpenChoosePlacePage = function(parentGame, apiImpl)
			dispatch(LoadExistingPlaces(parentGame))
			if FFlagPlacePublishManagementUI2 then
				dispatch(LoadGameConfiguration(parentGame.universeId, apiImpl))
            end
			dispatch(SetScreen(Constants.SCREENS.CHOOSE_PLACE))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChooseGame)
