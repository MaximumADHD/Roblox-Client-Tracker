--[[

	Allow the user to go back to picking a universe
	Allow the user to select a place to overwrite
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = require(Plugin.Packages.UILibrary)

local Constants = require(Plugin.Src.Resources.Constants)

local Theming = require(Plugin.Src.ContextServices.Theming)

local Localizing = UILibrary.Localizing
local Spritesheet = UILibrary.Util.Spritesheet
local createFitToContent = UILibrary.Component.createFitToContent
local Separator = UILibrary.Component.Separator

local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)
local LoadExistingPlaces = require(Plugin.Src.Thunks.LoadExistingPlaces)

local Footer = require(Plugin.Src.Components.Footer)
local TilePlace = require(Plugin.Src.Components.TilePlace)

local HALF_SCREEN = 5
local FRAME_BUTTON_SIZE = 32
local ARROW_SIZE = 12
local PAGE_PADDING = 115

local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
	SpriteSize = ARROW_SIZE,
	NumSprites = 4,
})

local rightArrowProps = arrowSpritesheet[2]
local leftArrowProps = arrowSpritesheet[4]

local HorizontalContentFit = createFitToContent("Frame", "UIListLayout", {
	Padding = UDim.new(0, 0),
	FillDirection = Enum.FillDirection.Horizontal,
	SortOrder = Enum.SortOrder.LayoutOrder,
})

local FFlagLuaPublishFlowFixCreateButtonInChinese = game:GetFastFlag("LuaPublishFlowFixCreateButtonInChinese")
local FFlagUXImprovementsPublishSuccessScreenPublishAs = game:GetFastFlag("UXImprovementsPublishSuccessScreenPublishAs")
local FFlagUXImprovementAddScrollToGamesPage = game:GetFastFlag("UXImprovementAddScrollToGamesPage")

local ScreenChoosePlace = Roact.PureComponent:extend("ScreenChoosePlace")

function ScreenChoosePlace:init()
	-- TODO (kstephan) 2019/07/31 Rplace onSecondHalf/hasSecondHalf pagination with infinite scroller
	--        This system is in place because the network always returns 10 places and we can only
	--        fit 5 on a page.
	self.state = {
		onSecondHalf = false,
		selectedPlace = nil,
		pageNumber = 1,
		isPreviousButtonHovered = false,
		isNextButtonHovered = false,
	}

	self.finishedConnection = nil

	self.onPreviousPageButtonPress = function()
		self:setState({
			pageNumber = self.state.pageNumber - 1,
		})
	end

	self.onNextPageButtonPress = function()
		self:setState({
			pageNumber = self.state.pageNumber + 1,
		})
	end

	self.onPreviousButtonHovered = function()
		self:setState({
			isPreviousButtonHovered = true,
		})
	end

	self.onPreviousButtonHoverEnded = function()
		self:setState({
			isPreviousButtonHovered = false,
		})
	end

	self.onNextButtonHovered = function()
		self:setState({
			isNextButtonHovered = true,
		})
	end

	self.onNextButtonHoverEnded = function()
		self:setState({
			isNextButtonHovered = false,
		})
	end
end

function ScreenChoosePlace:didMount()
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

function ScreenChoosePlace:willUnmount()
	if self.finishedConnection then
		self.finishedConnection:disconnect()
	end
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
			local isPublishing = props.IsPublishing

			local dispatchLoadExistingPlaces = props.DispatchLoadExistingPlaces
			local dispatchSetIsPublishing = props.dispatchSetIsPublishing
			local openChooseGamePage = props.OpenChooseGamePage


			local hasSecondHalf = #places > HALF_SCREEN
			local newPlaceSelected = false
			if self.state.selectedPlace ~= nil then
				newPlaceSelected = self.state.selectedPlace.placeId == 0
			end

			local gameText = parentGame and parentGame.name or ""
			local headerText = localization:getText("ScreenHeader", "ChoosePlace", gameText)

			local previousButtonActive = not (not onSecondHalf and previousPageCursor == nil)
			local previousButtonColor = theme.pageButton.ButtonColor
			if previousButtonActive then
				if self.state.isPreviousButtonHovered then
					previousButtonColor = theme.pageButton.hovered.ButtonColor
				end
			else
				previousButtonColor = theme.pageButton.disabled.ButtonColor
			end

			local nextButtonActive = (not onSecondHalf and hasSecondHalf) or (onSecondHalf and nextPageCursor ~= nil)
			local nextButtonColor = theme.pageButton.ButtonColor
			if nextButtonActive then
				if self.state.isNextButtonHovered then
					nextButtonColor = theme.pageButton.hovered.ButtonColor
				end
			else
				nextButtonColor = theme.pageButton.disabled.ButtonColor
			end

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
					components[v.placeId] = Roact.createElement(TilePlace, {
						Name = v.name,
						Id = v.placeId,
						LayoutOrder = i,
						Selected = self.state.selectedPlace and self.state.selectedPlace.placeId == v.placeId,
						LastItem = false,
						OnActivated = function()
							self:setState({
								selectedPlace = v
							})
						end,
					})
				end
			end

			if not hasSecondHalf or (onSecondHalf and not nextPageCursor) then
				components[0] = Roact.createElement(TilePlace, {
					Name = localization:getText("Button", "AddNewPlace"),
					LayoutOrder = #places + 1,
					Selected = newPlaceSelected,
					LastItem = true,
					OnActivated = function()
						self:setState({
							selectedPlace = { placeId = 0 , name = "Untitled Place"}
						})
					end,
				})
			end

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

				Main = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0.5, Constants.FOOTER_HEIGHT * 2),
					Position = UDim2.new(0, 0, 0, 100),
					BackgroundTransparency = 1,
				},
					components
				),

				PageButtons = Roact.createElement(HorizontalContentFit, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 1, -PAGE_PADDING)
				}, {
					-- TODO: Change pagination to use infinite scroll instead of next/previous page buttons
					PreviousButton = Roact.createElement("TextButton", {
						Size = UDim2.new(0, FRAME_BUTTON_SIZE, 0, FRAME_BUTTON_SIZE),
						BackgroundColor3 = previousButtonColor,
						BorderColor3 = theme.pageButton.BorderColor,
						Active = previousButtonActive,
						TextTransparency = 1,
						LayoutOrder = 1,

						[Roact.Event.MouseEnter] = self.onPreviousButtonHovered,
						[Roact.Event.MouseLeave] = self.onPreviousButtonHoverEnded,
						[Roact.Event.Activated] =  function()
							if not onSecondHalf and parentGame and previousPageCursor then
								dispatchLoadExistingPlaces(parentGame, previousPageCursor)
								self.onPreviousPageButtonPress()
							end
							self:setState({
								onSecondHalf = not onSecondHalf,
								selectedPlace = nil,
							})
						end,
					},{
						PreviousButtonImage = Roact.createElement("ImageButton", Cryo.Dictionary.join(leftArrowProps, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
							BackgroundTransparency = 1,
							ImageColor3 = previousButtonActive and theme.pageButton.ImageColor or theme.pageButton.disabled.ImageColor,
						})),
					}),

					PageNumberText = Roact.createElement("TextLabel", {
						Size = UDim2.new(0, 30, 1, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Text = self.state.pageNumber,
						BackgroundTransparency = 1,
						TextColor3 = theme.header.text,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextSize = 18,
						LayoutOrder = 2,
						Font = theme.pageText.font,
					}),

					NextButton = Roact.createElement("TextButton", {
						Size = UDim2.new(0, FRAME_BUTTON_SIZE, 0, FRAME_BUTTON_SIZE),
						BackgroundColor3 = nextButtonColor,
						BorderColor3 = theme.pageButton.BorderColor,
						Active = nextButtonActive,
						TextTransparency = 1,
						LayoutOrder = 3,

						[Roact.Event.MouseEnter] = self.onNextButtonHovered,
						[Roact.Event.MouseLeave] = self.onNextButtonHoverEnded,
						[Roact.Event.Activated] = function()
							if onSecondHalf and nextPageCursor and parentGame then
								dispatchLoadExistingPlaces(parentGame, nextPageCursor)
								self.onNextPageButtonPress()
							end
							self:setState({
								onSecondHalf = not onSecondHalf,
								selectedPlace = nil,
							})
						end,
					},{
						NextButtonImage = Roact.createElement("ImageButton", Cryo.Dictionary.join(rightArrowProps, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
							BackgroundTransparency = 1,
							ImageColor3 = nextButtonActive and theme.pageButton.ImageColor or theme.pageButton.disabled.ImageColor,
						})),
					}),
				}),

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
		PreviousPageCursor = placeInfo.previousPageCursor,
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
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChoosePlace)
