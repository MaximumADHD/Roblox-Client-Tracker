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

local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)

local Footer = require(Plugin.Src.Components.Footer)
local TilePlace = require(Plugin.Src.Components.TilePlace)

local PAGING_BUTTON_SIZE = UDim2.new(0, 80, 0, 30)
local HALF_SCREEN = 5

local ScreenChoosePlace = Roact.PureComponent:extend("ScreenChoosePlace")

function ScreenChoosePlace:init()
	-- TODO (kstephan) 2019/07/31 Rplace onSecondHalf/hasSecondHalf pagination with infinite scroller
	--        This system is in place because the network always returns 10 places and we can only
	--        fit 5 on a page.
	self:setState({
		onSecondHalf = false,
	})
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
			local universeId = nil
			if #places > 0 then
				universeId = places[1].universeId
			end

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
							OnActivated = function()
								StudioService:publishAs(v.universeId, v.placeId)
								StudioService.GamePublishedToRoblox:wait()
								onClose()
							end,
					}))
				end
			end

			if not hasSecondHalf or (onSecondHalf and not nextPageCursor) then
				table.insert(components, Roact.createElement(TilePlace, {
					Name = localization:getText("Button", "AddNewPlace"),
					Image = theme.icons.newPlace,
					OnActivated = function()
						StudioService:publishAs(universeId, 0)
						StudioService.GamePublishedToRoblox:wait()
						onClose()
					end,
				}))
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.backgroundColor,
				BorderSizePixel = 0,
			}, {
				Roact.createElement("ImageButton", {
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

				Roact.createElement(Separator, {
					Weight = 2,
					Padding = 20,
					Position = UDim2.new(0.5, 0, 0, 50),
				}),

				Button = Roact.createElement("TextLabel", {
					Text = "Overwrite or add a new place to",
					Position = UDim2.new(0, 180, 0, 70),
					TextSize = 20,
					BorderSizePixel = 0,
					Font = theme.header.font,
					TextColor3 = theme.textColor,
				}),

				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -100 + -Constants.FOOTER_HEIGHT),
					Position = UDim2.new(0, 0, 0, 100),
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,
				},
					components
				),

				-- TODO (kstephan) 2019/07/19 Replace buttons with infinite scroll mechanism
				Roact.createElement("TextButton", {
					Size = PAGING_BUTTON_SIZE,
					Text = localization:getText("Button", "PreviousPage"),
					Style = not (not onSecondHalf and previousPageCursor == nil) and 4 or 3,
					Active = not (not onSecondHalf and previousPageCursor == nil),
					Position = UDim2.new(1, -120, 0, 10),
					[Roact.Event.Activated] = function()
						if not onSecondHalf and universeId and previousPageCursor then
							dispatchLoadExistingPlaces(universeId, previousPageCursor)
						end
						self:setState({
							onSecondHalf = not onSecondHalf,
						})
					end,
				}),
				Roact.createElement("TextButton", {
					Size = PAGING_BUTTON_SIZE,
					Text = localization:getText("Button", "NextPage"),
					Style = ((not onSecondHalf and hasSecondHalf) or (onSecondHalf and nextPageCursor ~= nil)) and 4 or 3,
					Active = (not onSecondHalf and hasSecondHalf) or (onSecondHalf and nextPageCursor ~= nil),
					Position = UDim2.new(1, -120, 0, 60),
					[Roact.Event.Activated] = function()
						if onSecondHalf and universeId and nextPageCursor then
							dispatchLoadExistingPlaces(universeId, nextPageCursor)
						end
						self:setState({
							onSecondHalf = not onSecondHalf,
						})
					end,
				}),

				Footer = Roact.createElement(Footer, {
					OnClose = onClose,
					CancelActive = true,
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
	}
end

local function useDispatchForProps(dispatch)
	return {
		DispatchLoadExistingPlaces = function(universeId, cursor)
			dispatch(LoadExistingPlaces(universeId, cursor))
		end,
		OpenChooseGamePage = function()
			dispatch(SetPlaceInfo({ places = {} }))
			dispatch(SetScreen(Constants.SCREENS.CHOOSE_GAME))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChoosePlace)
