--[[
	Let the user select a universe to write this place into

	Allow the user to go back to publishing a new place
	Allow the user to pick a universe to overwrite a place in

]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Constants = require(Plugin.Src.Resources.Constants)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing

local LoadExistingGames = require(Plugin.Src.Thunks.LoadExistingGames)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)
local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Footer = require(Plugin.Src.Components.Footer)
local RoundTextButton = UILibrary.Component.RoundTextButton
local TileGame = require(Plugin.Src.Components.TileGame)

local PAGING_BUTTON_SIZE = UDim2.new(0, 80, 0, 30)
local BUTTON_WIDTH = 90
local GAME_PLACE_HOLDER = "rbxasset://textures/ui/GuiImagePlaceholder.png"

local ScreenChooseGame = Roact.PureComponent:extend("ScreenChooseGame")

function ScreenChooseGame:init()
	self.props.DispatchLoadExistingGames()
end

function ScreenChooseGame:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local props = self.props
			local onClose = props.OnClose

			local games = props.Games
			local nextPageCursor = props.NextPageCursor
			local previousPageCursor = props.PreviousPageCursor

			local dispatchLoadExistingGames = props.DispatchLoadExistingGames
			local openChoosePlacePage = props.OpenChoosePlacePage

			-- TODO (kstephan) 2019/07/29 Use infinite scroller. componentsTop and Bottom
			--                             is a clunky, temporary solution
			local componentsTop = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 20),
				}),
			}
			local componentsBottom = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 20),
				}),
			}

			for i,v in pairs(games) do
				local tile = Roact.createElement(TileGame, {
					Name = v.name,
					Id = v.universeId,
					OnActivated = function() openChoosePlacePage(v) end,
					Image = GAME_PLACE_HOLDER,
				})

				if i <= 5 then
					table.insert(componentsTop, tile)
				else
					table.insert(componentsBottom, tile)
				end
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.backgroundColor,
			}, {
				Roact.createElement("TextLabel", {
					Text = localization:getText("ScreenHeader", "ChooseGame"),
					Size = UDim2.new(0.6, 0, 0.12, 0),
					Position = UDim2.new(0.5, 0, 0.05, 0),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					TextColor3 = theme.header.text,
					Font = theme.header.font,
					TextSize = 40,
				}),

				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0.8, -Constants.FOOTER_HEIGHT),
					Position = UDim2.new(0, 0, 0.2, 0),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},{


					-- TODO (kstephan) 2019/07/29 Use infinite scroller instead of componentsTop and Bottom
					Roact.createElement("Frame", {
						Size = UDim2.new(0.9, 0, 0.4, 0),
						Position = UDim2.new(0.05, 0, 0, 0),
						BackgroundColor3 = theme.backgroundColor,
						BorderSizePixel = 0,
					}, componentsTop),
					Roact.createElement("Frame", {
						Size = UDim2.new(0.9, 0, 0.4, 0),
						Position = UDim2.new(0.05, 0, 0.5, 0),
						BackgroundColor3 = theme.backgroundColor,
						BorderSizePixel = 0,
					}, componentsBottom),
				}),

				-- TODO: Change pagination to use infinite scroll instead of next/previous page buttons
				Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 30),
					Position = UDim2.new(1, -80, 0, 30),
					AnchorPoint = Vector2.new(1,0),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},{
					Roact.createElement(RoundTextButton, {
						Style = theme.cancelButton,
						BorderMatchesBackground = false,
						Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
						Active = previousPageCursor ~= nil,
						Name = localization:getText("Button", "PreviousPage"),
						TextSize = Constants.TEXT_SIZE,

						OnClicked = function()
							if previousPageCursor then
								dispatchLoadExistingGames(previousPageCursor)
							end
						end,
					}),
				}),

				Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 30),
					Position = UDim2.new(1, -80, 0, 70),
					AnchorPoint = Vector2.new(1,0),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},{
					Roact.createElement(RoundTextButton, {
						Style = theme.cancelButton,
						BorderMatchesBackground = false,
						Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
						Active = nextPageCursor ~= nil,
						Name = localization:getText("Button", "NextPage"),
						TextSize = Constants.TEXT_SIZE,
						OnClicked = function()
							if nextPageCursor then
								dispatchLoadExistingGames(nextPageCursor)
							end
						end,
					}),
				}),

				Footer = Roact.createElement(Footer, {
					MainButton = {
						Name = "Create",
						Active = false,
					},
					OnClose = onClose,
					NextScreen = Constants.SCREENS.CREATE_NEW_GAME,
					NextScreenText  = "CreateNewGame"
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	local gameInfo = state.ExistingGame.gameInfo

	return {
		NextPageCursor = gameInfo.nextPageCursor,
		PreviousPageCursor = gameInfo.previousPageCursor,
		Games = gameInfo.games,
	}
end

local function useDispatchForProps(dispatch)
	return {
		DispatchLoadExistingGames = function(cursor)
			dispatch(LoadExistingGames(cursor))
		end,
		OpenChoosePlacePage = function(parentGame)
			dispatch(LoadExistingPlaces(parentGame))
			dispatch(SetScreen(Constants.SCREENS.CHOOSE_PLACE))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChooseGame)
