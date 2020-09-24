--[[
	Let the user select a universe to write this place into

	Allow the user to go back to publishing a new place
	Allow the user to pick a universe to overwrite a place in

]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = require(Plugin.Packages.UILibrary)

local Constants = require(Plugin.Src.Resources.Constants)

local Theming = require(Plugin.Src.ContextServices.Theming)

local LoadExistingGames = require(Plugin.Src.Thunks.LoadExistingGames)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)
local LoadGroups = require(Plugin.Src.Thunks.LoadGroups)

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Footer = require(Plugin.Src.Components.Footer)
local TileGame = require(Plugin.Src.Components.TileGame)

local Localizing = UILibrary.Localizing
local StyledDropDown = UILibrary.Component.StyledDropdown
local InfiniteScrollingFrame = UILibrary.Component.InfiniteScrollingFrame
local SearchBar = UILibrary.Component.SearchBar
local Separator = UILibrary.Component.Separator
local RoundFrame = UILibrary.Component.RoundFrame

local groupsLoaded = false

local FFlagLuaPublishFlowFixCreateButtonInChinese = game:GetFastFlag("LuaPublishFlowFixCreateButtonInChinese")
local FFlagStudioAddingScrollingToScreenChoosePlace = game:GetFastFlag("StudioAddingScrollingToScreenChoosePlace")
local FFlagBatchThumbnailAddNewThumbnailTypes = game:GetFastFlag("BatchThumbnailAddNewThumbnailTypes")
local FFlagUXImprovementAddSearchBar = game:GetFastFlag("UXImprovementAddSearchBar")

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
end

function ScreenChooseGame:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local props = self.props
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

			for _, game in pairs(games) do
				-- TODO: (smallick) 2020/08/26
				-- We should query using the endpoint and not manually
				-- However, as the endpoint does not currently support searching keywords we can filter using string.find
				if not FFlagUXImprovementAddSearchBar or string.find(game.name:lower(), self.state.searchTerm:lower()) then
					components[#components + 1] = Roact.createElement(TileGame, {
						Name = game.name,
						Id = FFlagBatchThumbnailAddNewThumbnailTypes and game.rootPlaceId or game.universeId,
						State = game.privacyType,
						LayoutOrder = #components + 1,
						OnActivated = function()
							openChoosePlacePage(game)
						end,
					})
				end
			end

			local TILE_HEIGHT = (theme.SCREEN_CHOOSE_GAME.ICON_SIZE + theme.SCREEN_CHOOSE_GAME.TILE_FOOTER_SIZE + theme.SCREEN_CHOOSE_GAME.CELL_PADDING_Y)

			-- TODO: (smallick) 2020/07/27
			-- Replace this with layoutRef
			-- Manually calculating CanvasHeight for now
			local canvasSize = math.ceil((#components - 1)/5) * TILE_HEIGHT
			if FFlagUXImprovementAddSearchBar then
				-- Force atleast 3 rows to show up to force scroll to appear. Further search results can be taken care of by InfiniteScrollingFrame
				-- nextPageFunc
				if canvasSize < 3 * TILE_HEIGHT then
					if nextPageCursor and SelectedItemType and SelectedItemKey then
						dispatchLoadExistingGames(SelectedItemType, SelectedItemKey, nextPageCursor)
					end
				end
			end

			if FFlagUXImprovementAddSearchBar then
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.backgroundColor,
				}, {
					ChooseGameText = Roact.createElement("TextLabel", {
						Text = localization:getText("ScreenHeader", "ChooseGame"),
						Position = UDim2.new(0, 30, 0, 25),
						BackgroundTransparency = 1,
						TextColor3 = theme.header.text,
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = theme.header.font,
						TextSize = 18,
					}),

					Sep1 = Roact.createElement(Separator, {
						Weight = 2,
						Padding = 20,
						Position = UDim2.new(0.5, 0, 0, 50),
					}),

					SearchBar = Roact.createElement("Frame", {
						Position = UDim2.new(0.6, 4, 0, 70),
						Size = UDim2.new(0, theme.DROPDOWN_WIDTH - 10, 0, theme.DROPDOWN_HEIGHT),
						BackgroundTransparency = 1,
					}, {
						Roact.createElement(SearchBar, {
							Position = UDim2.new(1, 0, 1, 0),
							Size = UDim2.new(1, 0, 1, 0),
							Enabled = true,
							Rounded = true,
							BackgroundTransparency = 1,
							FocusDisabled = true,
							OnSearchRequested = function(submittedSearch)
								if string.byte(submittedSearch:sub(-1, -1)) == 13 then
									self:setState({
										searchTerm = submittedSearch:sub(1, -2)
									})
								else
									self:setState({
										searchTerm = submittedSearch
									})
								end
							end,
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

					ScrollingFrame = Roact.createElement(InfiniteScrollingFrame, {
						Position = UDim2.new(0, 30, 0, 115),
						Size = UDim2.new(0.95, 0, 0.7, 0),
						BackgroundTransparency = 1,
						-- TODO: replace manual calculation with self.layoutRef
						-- LayoutRef = self.layoutRef,
						CanvasHeight = canvasSize,
						NextPageRequestDistance = 100,
						NextPageFunc = function()
							if nextPageCursor and SelectedItemType and SelectedItemKey then
								dispatchLoadExistingGames(SelectedItemType, SelectedItemKey, nextPageCursor)
							end
						end,
					}, components),

					Footer = Roact.createElement(Footer, {
						MainButton = {
							Name = FFlagLuaPublishFlowFixCreateButtonInChinese and "Create" or localization:getText("FooterButton", "Create"),
							Active = false,
						},
						OnClose = onClose,
						NextScreen = Constants.SCREENS.CREATE_NEW_GAME,
						NextScreenText  = "CreateNewGame",
					}),
				})
			else
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.backgroundColor,
				}, {
					ChooseGameText = Roact.createElement("TextLabel", {
						Text = localization:getText("ScreenHeader", "ChooseGame"),
						Position = UDim2.new(0, 30, 0, 20),
						BackgroundTransparency = 1,
						TextColor3 = theme.header.text,
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = theme.header.font,
						TextSize = 18,
					}),

					GroupDropdown = Roact.createElement(StyledDropDown, {
						Size = UDim2.new(0, theme.DROPDOWN_WIDTH, 0, theme.DROPDOWN_HEIGHT),
						Position = UDim2.new(0, 30, 0, 40),
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

					ScrollingFrame = Roact.createElement(InfiniteScrollingFrame, {
						Position = UDim2.new(0, 30, 0, 85),
						Size = UDim2.new(0.95, 0, 0.75, 0),
						BackgroundTransparency = 1,
						-- TODO: replace manual calculation with self.layoutRef
						-- LayoutRef = self.layoutRef,
						CanvasHeight = canvasSize,
						NextPageRequestDistance = 100,
						NextPageFunc = function()
							if nextPageCursor and SelectedItemType and SelectedItemKey then
								dispatchLoadExistingGames(SelectedItemType, SelectedItemKey, nextPageCursor)
							end
						end,
					}, components),

					Footer = Roact.createElement(Footer, {
						MainButton = {
							Name = FFlagLuaPublishFlowFixCreateButtonInChinese and "Create" or localization:getText("FooterButton", "Create"),
							Active = false,
						},
						OnClose = onClose,
						NextScreen = Constants.SCREENS.CREATE_NEW_GAME,
						NextScreenText  = "CreateNewGame",
					}),
				})
			end
		end)
	end)
end

function ScreenChooseGame:willUnmount()
	for key, _ in pairs(self.props.Games) do self.props.Games[key] = nil end
end

local function mapStateToProps(state, props)
	local gameInfo = state.ExistingGame.gameInfo
	local groupInfo = state.GroupsHavePermission.groupInfo

	return {
		NextPageCursor = gameInfo.nextPageCursor,
		Games = gameInfo.games,
		Groups = groupInfo.groups,
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
		OpenChoosePlacePage = function(parentGame)
			dispatch(LoadExistingPlaces(parentGame))
			if FFlagStudioAddingScrollingToScreenChoosePlace then
				dispatch(SetScreen(Constants.SCREENS.CHOOSE_PLACE_WITH_SCROLL))
			else
				dispatch(SetScreen(Constants.SCREENS.CHOOSE_PLACE))
			end
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChooseGame)
