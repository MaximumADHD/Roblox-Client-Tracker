--[[

	Allow the user to go back to picking a universe
	Allow the user to select a place to overwrite
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Constants = require(Plugin.Src.Resources.Constants)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local Separator = UILibrary.Component.Separator
local RoundTextButton = UILibrary.Component.RoundTextButton

local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)

local Footer = require(Plugin.Src.Components.Footer)
local TilePlace = require(Plugin.Src.Components.TilePlace)

local PAGING_BUTTON_SIZE = UDim2.new(0, 80, 0, 30)
local HALF_SCREEN = 5
local BUTTON_WIDTH = 90

local ScreenChoosePlace = Roact.PureComponent:extend("ScreenChoosePlace")

function ScreenChoosePlace:init()
	-- TODO (kstephan) 2019/07/31 Rplace onSecondHalf/hasSecondHalf pagination with infinite scroller
	--        This system is in place because the network always returns 10 places and we can only
	--        fit 5 on a page.
	self.state = {
		onSecondHalf = false,
		selected = false,
	}
end

function ScreenChoosePlace:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local onSecondHalf = self.state.onSecondHalf
			local props = self.props
			local onClose = props.OnClose

			local nextPageCursor = props.NextPageCursor
			local previousPageCursor = props.PreviousPageCursor
			local places = props.Places
			local parentGame = props.ParentGame

			local dispatchLoadExistingPlaces = props.DispatchLoadExistingPlaces
			local openChooseGamePage = props.OpenChooseGamePage

			local hasSecondHalf = #places > HALF_SCREEN

			local components = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
				}),
			}
			for i,v in pairs(places) do
				if (i <= HALF_SCREEN and not onSecondHalf) or (i > HALF_SCREEN and onSecondHalf) then
					table.insert(components, Roact.createElement(TilePlace, {
						Name = v.name,
						Image = theme.icons.cityBackground,
						Selected = self.state.selected == v.placeId,
						LastItem = false,
						OnActivated = function()
							self:setState({ selected = v.placeId })
						end,
					}))
				end
			end

			if not hasSecondHalf or (onSecondHalf and not nextPageCursor) then
				table.insert(components, Roact.createElement(TilePlace, {
					Name = localization:getText("Button", "AddNewPlace"),
					Image = theme.icons.newPlace,
					Selected = self.state.selected == 0,
					LastItem = true,
					OnActivated = function()
						self:setState({ selected = 0 })
					end,
				}))
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.backgroundColor,
				BorderSizePixel = 0,
			}, {
				Back = Roact.createElement("ImageButton", {
					Image = theme.icons.backArrow,
					Size = UDim2.new(0, 20, 0, 20),
					Position = UDim2.new(0, 30, 0, 13),

					Style = 0,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,

					[Roact.Event.Activated] = function()
						openChooseGamePage()
					end,
				}),

				Sep1 = Roact.createElement(Separator, {
					Weight = 2,
					Padding = 20,
					Position = UDim2.new(0.5, 0, 0, 50),
				}),

				-- TODO (kstephan) 2019/07/31 Add these 2 labels into a layout
				Header = Roact.createElement("TextLabel", {
					Text = localization:getText("ScreenHeader", "ChoosePlace"),
					Position = UDim2.new(0, 180, 0, 70),
					TextSize = 20,
					BorderSizePixel = 0,
					Font = theme.header.font,
					TextColor3 = theme.textColor,
				}),
				GameName = Roact.createElement("TextLabel", {
					Text = parentGame and parentGame.name or "",
					Position = UDim2.new(0, 380, 0, 70),
					AnchorPoint = Vector2.new(0, 0),
					TextSize = 20,
					BorderSizePixel = 0,
					Font = theme.header.font,
					TextColor3 = theme.textColor,
				}),

				Main = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -100 + -Constants.FOOTER_HEIGHT),
					Position = UDim2.new(0, 0, 0, 100),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},
					components
				),

				-- TODO: Change pagination to use infinite scroll instead of next/previous page buttons
				Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 30),
					Position = UDim2.new(1, -40, 0, 10),
					AnchorPoint = Vector2.new(1,0),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},{
					Roact.createElement(RoundTextButton, {
						Style = theme.cancelButton,
						BorderMatchesBackground = false,
						Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
						Active = not (not onSecondHalf and previousPageCursor == nil),
						Name = localization:getText("Button", "PreviousPage"),
						TextSize = Constants.TEXT_SIZE,
						OnClicked = function()
							if not onSecondHalf and parentGame and previousPageCursor then
								dispatchLoadExistingPlaces(parentGame, previousPageCursor)
							end
							self:setState({
								onSecondHalf = not onSecondHalf,
								selected = false,
							})
						end,
					}),
				}),

				Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 30),
					Position = UDim2.new(1, -40, 0, 60),
					AnchorPoint = Vector2.new(1,0),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},{
					Roact.createElement(RoundTextButton, {
						Style = theme.cancelButton,
						BorderMatchesBackground = false,
						Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
						Active = (not onSecondHalf and hasSecondHalf) or (onSecondHalf and nextPageCursor ~= nil),
						Name = localization:getText("Button", "NextPage"),
						TextSize = Constants.TEXT_SIZE,
						OnClicked = function()
							if onSecondHalf and nextPageCursor and parentGame then
								dispatchLoadExistingPlaces(parentGame, nextPageCursor)
							end
							self:setState({
								onSecondHalf = not onSecondHalf,
								selected = false,
							})
						end,
					}),
				}),

				Footer = Roact.createElement(Footer, {
					MainButton = {
						Name = "Overwrite",
						Active = parentGame and self.state.selected,
						OnActivated = function()
							StudioService:publishAs(parentGame.universeId, self.state.selected)
							StudioService.GamePublishedToRoblox:wait()
							onClose()
						end,
					},
					OnClose = onClose,
					NextScreen = nil,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	local placeInfo = state.ExistingGame.placeInfo
	return {
		NextPageCursor = placeInfo.nextPageCursor,
		PreviousPageCursor = placeInfo.previousPageCursor,
		Places = placeInfo.places,
		ParentGame = placeInfo.parentGame,
	}
end

local function useDispatchForProps(dispatch)
	return {
		DispatchLoadExistingPlaces = function(parentGame, cursor)
			dispatch(LoadExistingPlaces(parentGame, cursor))
		end,
		OpenChooseGamePage = function()
			dispatch(SetPlaceInfo({ places = {} }))
			dispatch(SetScreen(Constants.SCREENS.CHOOSE_GAME))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChoosePlace)
