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
local Spritesheet = UILibrary.Util.Spritesheet
local createFitToContent = UILibrary.Component.createFitToContent
local StyledDropDown = UILibrary.Component.StyledDropdown


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
local groupsLoaded = false

local FFlagLuaPublishFlowFixCreateButtonInChinese = game:GetFastFlag("LuaPublishFlowFixCreateButtonInChinese")
local FFlagBatchThumbnailAddNewThumbnailTypes = game:GetFastFlag("BatchThumbnailAddNewThumbnailTypes")

local ScreenChooseGame = Roact.PureComponent:extend("ScreenChooseGame")

function ScreenChooseGame:init()
	self.state = {
		pageNumber = 1,
		isPreviousButtonHovered = false,
		isNextButtonHovered = false,
		--TODO: switch to index when table.indexOf(value) is added
		selectedItem = nil,
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

	self.props.DispatchLoadExistingGames(Constants.SUBJECT_TYPE.USER, 0)
	self.props.DispatchLoadGroups()
end

function ScreenChooseGame:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local props = self.props
			local onClose = props.OnClose

			local games = props.Games
			local nextPageCursor = props.NextPageCursor
			local previousPageCursor = props.PreviousPageCursor
			local groups = props.Groups

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

			local myGamesText = localization:getText("GroupDropdown", "MyGames")

			local dropdownItems = { { Type = Constants.SUBJECT_TYPE.USER, Key = 0, Text = myGamesText, }, }

			if not self.state.selectedItem then
				self:setState({
					selectedItem = dropdownItems[1],
				})
			end

			if groups and next(groups) ~= nil then
				for _, group in pairs(groups) do
					table.insert(dropdownItems, { Type = Constants.SUBJECT_TYPE.GROUP, Key = group.groupId, Text = group.name, })
				end
				if not groupsLoaded then
					groupsLoaded = true
					for _, item in ipairs(dropdownItems) do
						if game.CreatorId == item.Key and game.CreatorType == Enum.CreatorType.Group then
							self:setState({
								selectedItem = item,
							})
							dispatchLoadExistingGames(item.Type, item.Key)
						end
					end
				end
			end

			local dropdownDisplayText = (self.state.selectedItem and self.state.selectedItem or dropdownItems[1]).Text

			-- TODO (kstephan) 2019/07/29 Use infinite scroller. componentsTop and Bottom
			--                             is a clunky, temporary solution
			local componentsTop = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 30),
				}),
			}
			local componentsBottom = {
				Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 30),
				}),
			}

			for i,v in pairs(games) do
				if i <= 5 then
					componentsTop[v.universeId] = Roact.createElement(TileGame, {
						Name = v.name,
						Id = FFlagBatchThumbnailAddNewThumbnailTypes and v.rootPlaceId or v.universeId,
						State = v.privacyType,
						LayoutOrder = i,
						OnActivated = function()
							openChoosePlacePage(v)
						end,
					})
				else
					componentsBottom[v.universeId] = Roact.createElement(TileGame, {
						Name = v.name,
						Id = FFlagBatchThumbnailAddNewThumbnailTypes and v.rootPlaceId or v.universeId,
						State = v.privacyType,
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
					Position = UDim2.new(0, 30, 0, 20),
					BackgroundTransparency = 1,
					TextColor3 = theme.header.text,
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = theme.header.font,
					TextSize = 18,
				}),

				GroupDropdown = Roact.createElement(StyledDropDown, {
					Size = UDim2.new(0, 330, 0, 38),
					Position = UDim2.new(0, 30, 0, 40),
					ItemHeight = 38,
					ButtonText = dropdownDisplayText,
					Items = dropdownItems,
					MaxItems = 4,
					TextSize = 18,
					SelectedItem = (self.state.selectedItem and self.state.selectedItem or dropdownItems[1]).Key,
					ShowRibbon = not theme.isDarkerTheme,
					OnItemClicked = function(item)
						self:setState({
							pageNumber = 1,
							selectedItem = item,
						})
						dispatchLoadExistingGames(self.state.selectedItem.Type, self.state.selectedItem.Key)
					end,
					ListWidth = 330,
				}),

				GamesList = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0.5, Constants.FOOTER_HEIGHT),
					Position = UDim2.new(0, 0, 0.5, -Constants.FOOTER_HEIGHT * 2),
					BackgroundTransparency = 1,
				},{
					-- TODO (kstephan) 2019/07/29 Use infinite scroller instead of componentsTop and Bottom
					TopRow = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0.5, 0),
						Position = UDim2.new(0, 30, 0, 0),
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
					}, componentsTop),

					BottomRow = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0.5, 0),
						Position = UDim2.new(0, 30, 0.5, 20),
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
					}, componentsBottom),
				}),

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
						[Roact.Event.Activated] = function()
							if previousPageCursor then
								dispatchLoadExistingGames(self.state.selectedItem.Type, self.state.selectedItem.Key, previousPageCursor)
								self.onPreviousPageButtonPress()
							end
						end,
					},{
						PreviousButtonImage = Roact.createElement("ImageLabel", Cryo.Dictionary.join(leftArrowProps, {
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
						Active = nextPageCursor ~= nil,
						TextTransparency = 1,
						LayoutOrder = 3,

						[Roact.Event.MouseEnter] = self.onNextButtonHovered,
						[Roact.Event.MouseLeave] = self.onNextButtonHoverEnded,
						[Roact.Event.Activated] = function()
							if nextPageCursor then
								dispatchLoadExistingGames(self.state.selectedItem.Type, self.state.selectedItem.Key, nextPageCursor)
								self.onNextPageButtonPress()
							end
						end,
					},{
						NextButton = Roact.createElement("ImageLabel", Cryo.Dictionary.join(rightArrowProps, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
							BackgroundTransparency = 1,
							ImageColor3 = theme.pageButton.ImageColor,
						})),
					}),
				}),

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
		end)
	end)
end

local function mapStateToProps(state, props)
	local gameInfo = state.ExistingGame.gameInfo
	local groupInfo = state.GroupsHavePermission.groupInfo

	return {
		NextPageCursor = gameInfo.nextPageCursor,
		PreviousPageCursor = gameInfo.previousPageCursor,
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
			dispatch(SetScreen(Constants.SCREENS.CHOOSE_PLACE))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(ScreenChooseGame)
