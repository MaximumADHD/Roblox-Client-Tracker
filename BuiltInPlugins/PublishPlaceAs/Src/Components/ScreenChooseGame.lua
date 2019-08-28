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
local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Footer = require(Plugin.Src.Components.Footer)
local TileGame = require(Plugin.Src.Components.TileGame)

local Localizing = UILibrary.Localizing
local Spritesheet = UILibrary.Util.Spritesheet
local RoundTextButton = UILibrary.Component.RoundTextButton
local createFitToContent = UILibrary.Component.createFitToContent

local FRAME_BUTTON_SIZE = 24
local ARROW_SIZE = 12

local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
	SpriteSize = ARROW_SIZE,
	NumSprites = 4,
})

local rightArrowProps = arrowSpritesheet[2]
local leftArrowProps = arrowSpritesheet[4]

local HorizontalContentFit = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
	FillDirection = Enum.FillDirection.Horizontal,
	SortOrder = Enum.SortOrder.LayoutOrder,
})

local ScreenChooseGame = Roact.PureComponent:extend("ScreenChooseGame")

function ScreenChooseGame:init()
	self.props.DispatchLoadExistingGames()

	self.state = {
		pageNumber = 1,
		isPreviousButtonHovered = false,
		isNextButtonHovered = false,
	}

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

			local previousButtonActive = previousPageCursor ~= nil and self.state.pageNumber > 1
			local previousButtonColor = theme.pageButton.ButtonColor
			if previousButtonActive then
				if self.state.isPreviousButtonHovered then
					previousButtonColor = theme.pageButton.hovered.ButtonColor
				end
			else 
				previousButtonColor = theme.pageButton.disabled.ButtonColor
			end

			local nextButtonColor = theme.pageButton.ButtonColor
			if self.state.isNextButtonHovered then
				nextButtonColor = theme.pageButton.hovered.ButtonColor
			end

			-- TODO (kstephan) 2019/07/29 Use infinite scroller. componentsTop and Bottom
			--                             is a clunky, temporary solution
			local componentsTop = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 20),
				}),
			}
			local componentsBottom = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 20),
				}),
			}

			for i,v in pairs(games) do
				if i <= 5 then
					componentsTop[v.universeId] = Roact.createElement(TileGame, {
						Name = v.name,
						Id = v.universeId,
						LayoutOrder = i,
						OnActivated = function() 
							openChoosePlacePage(v) 
						end,
					})
				else
					componentsBottom[v.universeId] = Roact.createElement(TileGame, {
						Name = v.name,
						Id = v.universeId,
						LayoutOrder = i - 5,
						OnActivated = function() 
							openChoosePlacePage(v) 
						end,
					})
				end
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.backgroundColor,
			}, {
				ChooseGameText = Roact.createElement("TextLabel", {
					Text = localization:getText("ScreenHeader", "ChooseGame"),
					Position = UDim2.new(0, 60, 0.05, 0),
					BackgroundTransparency = 1,
					TextColor3 = theme.header.text,
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = theme.header.font,
					TextSize = 18,
				}),
				
				GamesList = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0.7, -Constants.FOOTER_HEIGHT),
					Position = UDim2.new(0, 0, 0.17, 0),
					BackgroundTransparency = 1,
				},{
					-- TODO (kstephan) 2019/07/29 Use infinite scroller instead of componentsTop and Bottom
					TopRow = Roact.createElement("Frame", {
						Size = UDim2.new(0, 780, 0.4, 0),
						Position = UDim2.new(0.5, 0, 0, 0),
						AnchorPoint = Vector2.new(0.5, 0),
						BackgroundTransparency = 1,
					}, componentsTop),
					
					BottomRow = Roact.createElement("Frame", {
						Size = UDim2.new(0, 780, 0.4, 0),
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.new(0.5, 0, 0.6, 0),
						BackgroundTransparency = 1,
					}, componentsBottom),
				}),

				PageButtons = Roact.createElement(HorizontalContentFit, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.8, 0)
				}, {
					-- TODO: Change pagination to use infinite scroll instead of next/previous page buttons
					PreviousButtonFrame = Roact.createElement("Frame", {
						Size = UDim2.new(0, FRAME_BUTTON_SIZE, 0, FRAME_BUTTON_SIZE),
						BackgroundColor3 = previousButtonColor,
						BorderColor3 = theme.pageButton.BorderColor,
						LayoutOrder = 1,
					},{
						PreviousButton = Roact.createElement("ImageButton", Cryo.Dictionary.join(leftArrowProps, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
							BackgroundTransparency = 1,
							Active = previousButtonActive,
							ImageColor3 = previousButtonActive and theme.pageButton.ImageColor or theme.pageButton.disabled.ImageColor,
							
							[Roact.Event.MouseEnter] = self.onPreviousButtonHovered,
							[Roact.Event.MouseLeave] = self.onPreviousButtonHoverEnded,
							[Roact.Event.Activated] = function()
								if previousPageCursor then
									dispatchLoadExistingGames(previousPageCursor)
									self.onPreviousPageButtonPress()
								end
							end,
						})),
					}),

					PageNumberText = Roact.createElement("TextLabel", {
						Size = UDim2.new(0, 30, 1, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Text = self.state.pageNumber,
						BackgroundTransparency = 1,
						TextColor3 = theme.header.text,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextSize = 13,
						LayoutOrder  = 2,
					}),

					NextButtonFrame = Roact.createElement("Frame", {
						Size = UDim2.new(0, FRAME_BUTTON_SIZE, 0, FRAME_BUTTON_SIZE),
						BackgroundColor3 = nextButtonColor,
						BorderColor3 = theme.pageButton.BorderColor,
						LayoutOrder = 3,
					},{
						NextButton = Roact.createElement("ImageButton", Cryo.Dictionary.join(rightArrowProps, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
							BackgroundTransparency = 1,
							Active = nextPageCursor ~= nil,	
							ImageColor3 = theme.pageButton.ImageColor,	
							
							[Roact.Event.MouseEnter] = self.onNextButtonHovered,
							[Roact.Event.MouseLeave] = self.onNextButtonHoverEnded,
							[Roact.Event.Activated] = function()
								if nextPageCursor then
									dispatchLoadExistingGames(nextPageCursor)
									self.onNextPageButtonPress()
								end
							end,
						})),
					}),
				}),
			

				Footer = Roact.createElement(Footer, {
					MainButton = {
						Name = localization:getText("FooterButton", "Create"),
						Active = false,
					},
					OnClose = onClose,
					NextScreen = Constants.SCREENS.CREATE_NEW_GAME,
					NextScreenText  = "CreateNewGame",
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
