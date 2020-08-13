--[[
	Allow the user to go back to picking a universe
	Allow the user to select a place to overwrite
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local Constants = require(Plugin.Src.Resources.Constants)

local Theming = require(Plugin.Src.ContextServices.Theming)

local Localizing = UILibrary.Localizing
local Separator = UILibrary.Component.Separator
local InfiniteScrollingFrame = UILibrary.Component.InfiniteScrollingFrame

local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)

local Footer = require(Plugin.Src.Components.Footer)
local TilePlace = require(Plugin.Src.Components.TilePlace)

local FFlagLuaPublishFlowFixCreateButtonInChinese = game:GetFastFlag("LuaPublishFlowFixCreateButtonInChinese")
local FFlagUXImprovementAddScrollToGamesPage = game:GetFastFlag("UXImprovementAddScrollToGamesPage")
local FFlagUXImprovementsPublishSuccessScreenPublishAs = game:GetFastFlag("UXImprovementsPublishSuccessScreenPublishAs")

local ScreenChoosePlaceWithScrolling = Roact.PureComponent:extend("ScreenChoosePlaceWithScrolling")

function ScreenChoosePlaceWithScrolling:init()
	self.state = {
		selectedPlace = nil
	}

	self.finishedConnection = nil

	self.layoutRef = Roact.createRef()
end

function ScreenChoosePlaceWithScrolling:didMount()
	self.finishedConnection = StudioService.GamePublishFinished:connect(function(success)
		if FFlagUXImprovementsPublishSuccessScreenPublishAs or self.state.selectedPlace.placeId == 0 then
			if success then
				self.props.OpenPublishSuccessfulPage(self.state.selectedPlace, self.props.ParentGame)
			else
				self.props.OpenPublishFailPage(self.state.selectedPlace, self.props.ParentGame)
			end
		end
	end)
end

function ScreenChoosePlaceWithScrolling:willUnmount()
	--Places shares the same address as the running table in the thunk. So we can clear it by
	--removing all elements in places
	for key, _ in pairs(self.props.Places) do self.props.Places[key] = nil end
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
end

function ScreenChoosePlaceWithScrolling:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local props = self.props
			local onClose = props.OnClose

			local nextPageCursor = props.NextPageCursor
			local places = props.Places
			
			local components = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
					[Roact.Ref] = self.layoutRef,
				}),
			}

			local parentGame = props.ParentGame
			local isPublishing = props.IsPublishing

			local dispatchLoadExistingPlaces = props.DispatchLoadExistingPlaces
			local dispatchSetIsPublishing = props.dispatchSetIsPublishing
			local openChooseGamePage = props.OpenChooseGamePage

			local newPlaceSelected = false
			if self.state.selectedPlace ~= nil then
				newPlaceSelected = self.state.selectedPlace.placeId == 0
			end

			local gameText = parentGame and parentGame.name or ""
			local headerText = localization:getText("ScreenHeader", "ChoosePlace", gameText)

			for _, place in pairs(places) do
				local createdTile = Roact.createElement(TilePlace, {
					Name = place.name,
					Id = place.placeId,
					LayoutOrder = #components + 1,
					Selected = self.state.selectedPlace and self.state.selectedPlace.placeId == place.placeId,
					LastItem = false,
					OnActivated = function()
						self:setState({
							selectedPlace = place
						})
					end,
				})
				components[#components + 1] = createdTile
			end

			components[0] = Roact.createElement(TilePlace, {
				Name = localization:getText("Button", "AddNewPlace"),
				LayoutOrder = 1,
				Selected = newPlaceSelected,
				OnActivated = function()
					self:setState({
						selectedPlace = { placeId = 0 , name = "Untitled Place"}
					})
				end,
			})

			local footerMainButtonName
			if FFlagLuaPublishFlowFixCreateButtonInChinese then
				footerMainButtonName = newPlaceSelected and "Create" or "Overwrite"
			else
				footerMainButtonName = newPlaceSelected and localization:getText("FooterButton", "Create")
				or localization:getText("FooterButton", "Overwrite")
			end

			return Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundColor3 = theme.backgroundColor,
						BorderSizePixel = 0,
					}, {
						Back = Roact.createElement("ImageButton", {
							Image = theme.icons.backArrow,
							Size = UDim2.new(0, 20, 0, 20),
							Position = UDim2.new(0, 30, 0, 10),
		
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
		
						Header = Roact.createElement("TextLabel", {
							Text = headerText,
							Position = UDim2.new(0, 30, 0, 80),
							TextXAlignment = Enum.TextXAlignment.Left,
							TextSize = 20,
							BackgroundTransparency = 1,
							Font = theme.header.font,
							TextColor3 = theme.textColor,
						}),
		
						ScrollingFrame = Roact.createElement(InfiniteScrollingFrame, {
							Size = UDim2.new(1, 0, 0.5, Constants.FOOTER_HEIGHT * 2),
							Position = UDim2.new(0, 0, 0, 100),
		
							BackgroundTransparency = 1,
							LayoutRef = self.layoutRef,
							CanvasHeight = 200,
							NextPageRequestDistance = 100,
							NextPageFunc = function()
								if nextPageCursor then
									dispatchLoadExistingPlaces(parentGame, nextPageCursor)
								end
							end,
						}, components),
		
						Footer = Roact.createElement(Footer, {
							MainButton = {
								Name = footerMainButtonName,
								Active = parentGame and self.state.selectedPlace ~= nil and not isPublishing,
								OnActivated = function()
									-- groupId is unused
									StudioService:publishAs(parentGame.universeId, self.state.selectedPlace.placeId, 0)
									dispatchSetIsPublishing(true)
									if not FFlagUXImprovementsPublishSuccessScreenPublishAs and self.state.selectedPlace.placeId ~= 0 then
										onClose()
									end
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
		Places = placeInfo.places,
		ParentGame = placeInfo.parentGame,
		IsPublishing = state.PublishedPlace.isPublishing,
	}
end

local function useDispatchForProps(dispatch)
	return {
		DispatchLoadExistingPlaces = function(parentGame, cursor)
			dispatch(LoadExistingPlaces(parentGame, cursor))
		end,
		dispatchSetIsPublishing = function(isPublishing)
			dispatch(SetIsPublishing(isPublishing))
		end,
		OpenChooseGamePage = function()
			dispatch(SetPlaceInfo({ places = {} }))
			if FFlagUXImprovementAddScrollToGamesPage then
				dispatch(SetScreen(Constants.SCREENS.CHOOSE_GAME_WITH_SCROLL))
			else
				dispatch(SetScreen(Constants.SCREENS.CHOOSE_GAME))
			end
		end,
		OpenPublishSuccessfulPage = function(place, game)
			if FFlagUXImprovementsPublishSuccessScreenPublishAs then
				dispatch(SetPublishInfo({ id = game.universeId, name = place.name, parentGameName = game.name, }))
			else
				dispatch(SetPublishInfo({ id = place.placeId, name = place.name, parentGameName = game.name, }))
			end
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_SUCCESSFUL))
		end,
		OpenPublishFailPage = function(place, game)
			dispatch(SetPublishInfo({ id = place.placeId, name = place.name, parentGameName = game.name, parentGameId = game.universeId }))
			dispatch(SetScreen(Constants.SCREENS.PUBLISH_FAIL))
		end,
		ClearPlaces = function()
			dispatch(SetPlaceInfo({ places = {} }))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChoosePlaceWithScrolling)