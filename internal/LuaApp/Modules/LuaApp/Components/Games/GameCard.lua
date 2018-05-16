local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)
local Text = require(Modules.Common.Text)
local memoize = require(Modules.Common.memoize)

local Constants = require(Modules.LuaApp.Constants)
local RoactMotion = require(Modules.LuaApp.RoactMotion)

local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)
local GameVoteBar = require(Modules.LuaApp.Components.Games.GameVoteBar)
local GameThumbnail = require(Modules.LuaApp.Components.GameThumbnail)
local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)

-- Define static positions on the card:
local DEFAULT_ICON_SIZE = 90
local ICON_Y_POSITION = 0
local DEFAULT_ICON_SCALE = 1
local PRESSED_ICON_SCALE = 0.9
local BUTTON_DOWN_STIFFNESS = 1000
local BUTTON_DOWN_DAMPING = 50
local BUTTON_DOWN_SPRING_PRECISION = 0.5

local OUTER_MARGIN = 6
local INNER_MARGIN = 3
local TITLE_HEIGHT = 15
local PLAYER_COUNT_HEIGHT = 15
local THUMB_ICON_SIZE = 12
local VOTE_FRAME_HEIGHT = THUMB_ICON_SIZE
local SPONSOR_HEIGHT = 13

local VOTE_BAR_HEIGHT = 4
local VOTE_BAR_TOP_MARGIN = 4
local VOTE_BAR_LEFT_MARGIN = THUMB_ICON_SIZE + 3

local CARD_BACKGROUND_COLOR = Constants.Color.WHITE
local TITLE_COLOR = Constants.Color.GRAY1
local COUNT_COLOR = Constants.Color.GRAY2
local SPONSOR_COLOR = Constants.Color.GRAY2
local SPONSOR_TEXT_COLOR = Constants.Color.WHITE

local function getDimensions(newIconSize, newButtonScale)
	local buttonScale = newButtonScale or DEFAULT_ICON_SCALE
	local iconSize = newIconSize or DEFAULT_ICON_SIZE * buttonScale
	local outerMargin = OUTER_MARGIN * buttonScale
	local innerMargin = INNER_MARGIN * buttonScale
	local titleHeight = TITLE_HEIGHT * buttonScale
	local playerCountHeight = PLAYER_COUNT_HEIGHT * buttonScale
	local voteFrameHeight = VOTE_FRAME_HEIGHT * buttonScale
	local dimensions = {}

	-- Width is simple:
	dimensions.cardWidth = iconSize

	-- Height depends on the size of the icon plus other components:
	dimensions.titleYPosition = ICON_Y_POSITION + outerMargin + iconSize
	dimensions.playerYCountPosition = dimensions.titleYPosition + titleHeight + innerMargin
	dimensions.voteFrameYPosition = dimensions.playerYCountPosition + playerCountHeight + innerMargin
	dimensions.cardHeight = dimensions.voteFrameYPosition + voteFrameHeight + outerMargin
	return dimensions
end

local function FormatInteger(num, sep, sepCount)
	assert(type(num) == "number", "FormatInteger expects a number; was given type: " .. type(num))

	sep = sep or ","
	sepCount = sepCount or 3

	local parsedInt = string.format("%.0f", math.abs(num))
	local firstSeperatorIndex = #parsedInt % sepCount
	if firstSeperatorIndex == 0 then
		firstSeperatorIndex = sepCount
	end

	local seperatorPattern = "(" .. string.rep("%d", sepCount) .. ")"
	local seperatorReplacement = sep .. "%1"
	local result = parsedInt:sub(1, firstSeperatorIndex) ..
		parsedInt:sub(firstSeperatorIndex+1):gsub(seperatorPattern, seperatorReplacement)
	if num < 0 then
		result = "-" .. result
	end

	return result
end

local GameCard = Roact.PureComponent:extend("GameCard")

function GameCard:eventDisconnect()
	if self.userInputServiceCon then
		self.userInputServiceCon:Disconnect()
		self.userInputServiceCon = nil
	end
end

function GameCard:onButtonUp(buttonActivated)
	if self.state.buttonDown or self.state.buttonActivated ~= buttonActivated then
		self:setState({
			buttonDown = false,
			buttonActivated = buttonActivated,
		})
	end
	self:eventDisconnect()
end

function GameCard:onButtonDown()
	if not self.state.buttonDown then
		self:eventDisconnect()
		self.userInputServiceCon = UserInputService.InputEnded:Connect(function()
			self:onButtonUp()
		end)
		self:setState({
			buttonDown = true,
			buttonActivated = false,
		})
	end
end

function GameCard:init()
	-- Truncating the title is really slow so lets memoize it for later use
	-- We need to memoize per instance because memoize only saves the last input
	self.makeTitle = memoize(Text.Truncate)

	self.state = {
		buttonDown = false,
		buttonActivated = false,
	}

	local openGameDetails = self.openGameDetails
	self.openGameDetails = function(...)
		openGameDetails(self, ...)
	end

	self.onButtonInputBegan = function(_, inputObject)
		if inputObject.UserInputType == Enum.UserInputType.Touch or
			inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
			self:onButtonDown()
		end
	end

	self.onButtonActivated = function()
		self:onButtonUp(true)
	end
end

function GameCard:openGameDetails()
	local notificationType = GuiService:GetNotificationTypeList().VIEW_GAME_DETAILS_ANIMATED
	GuiService:BroadcastNotification(string.format("%d", self.props.game.placeId), notificationType)

	-- fire some analytics
	local index = self.props.index
	local reportGameDetailOpened = self.props.reportGameDetailOpened
	reportGameDetailOpened(index)
end

function GameCard:render()
	local entry = self.props.entry
	local iconSize = self.props.iconSize
	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local game = self.props.game

	local name = game.name
	local placeId = game.placeId
	local playerCount = game.playerCount
	local totalDownVotes = game.totalDownVotes
	local totalUpVotes = game.totalUpVotes

	local isSponsored = entry.isSponsored

	local totalVotes = (totalUpVotes + totalDownVotes)
	if totalVotes == 0 then
		totalVotes = 1
	end
	local votePercentage = totalUpVotes / totalVotes

	-- Use a custom icon size if it's passed to us - this will scale the rest of the card to fit:
	if (iconSize == nil) then
		iconSize = DEFAULT_ICON_SIZE
	end
	local dimensions = getDimensions(iconSize)

	return Roact.createElement(RoactMotion.SimpleMotion, {
		style = {
			buttonScale = RoactMotion.spring(self.state.buttonDown and PRESSED_ICON_SCALE or
				DEFAULT_ICON_SCALE, BUTTON_DOWN_STIFFNESS, BUTTON_DOWN_DAMPING, BUTTON_DOWN_SPRING_PRECISION),
		},
		onRested = self.state.buttonActivated and self.openGameDetails or nil,
		render = function(values)
			local buttonScale = values.buttonScale

			local iconSize = iconSize * buttonScale
			local outerMargin = OUTER_MARGIN * buttonScale
			local titleHeight = TITLE_HEIGHT * buttonScale
			local playerCountHeight = PLAYER_COUNT_HEIGHT * buttonScale
			local thumbIconSize = THUMB_ICON_SIZE * buttonScale
			local voteFrameHeight = VOTE_FRAME_HEIGHT * buttonScale
			local voteBarHeight = VOTE_BAR_HEIGHT * buttonScale
			local voteBarLeftMargin = VOTE_BAR_LEFT_MARGIN * buttonScale
			local voteBarTopMargin = VOTE_BAR_TOP_MARGIN * buttonScale
			local sponsorHeight = SPONSOR_HEIGHT * buttonScale

			local isDefaultIconScale = values.buttonScale == DEFAULT_ICON_SCALE
			local scaledDimensions = isDefaultIconScale and dimensions or getDimensions(iconSize, values.buttonScale)
			local voteBarWidth = scaledDimensions.cardWidth - (outerMargin * 2 + voteBarLeftMargin)

			return Roact.createElement(DropshadowFrame, {
				AnchorPoint = anchorPoint,
				BackgroundColor3 = CARD_BACKGROUND_COLOR,
				Position = position,
				Size = UDim2.new(0, dimensions.cardWidth, 0, dimensions.cardHeight),
				LayoutOrder = layoutOrder,

				buttonScale = buttonScale,
			}, {
				ButtonContainer = Roact.createElement("TextButton", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					AutoButtonColor = false,
					ClipsDescendants = true,

					[Roact.Event.InputBegan] = self.onButtonInputBegan,
					[Roact.Event.Activated] = self.onButtonActivated,
				}, {
					Icon = Roact.createElement(GameThumbnail, {
						Size = UDim2.new(1, 0, 0, iconSize),
						Position = UDim2.new(0, 0, 0, ICON_Y_POSITION),
						placeId = placeId,
						BorderSizePixel = 0,
						BackgroundColor3 = Constants.Color.GRAY5,
						loadingImage = "rbxasset://textures/ui/LuaApp/icons/ic-game.png",
					}),
					Title = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, -outerMargin*2, 0, titleHeight),
						Position = UDim2.new(0, outerMargin, 0, scaledDimensions.titleYPosition),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextSize = titleHeight,
						TextColor3 = TITLE_COLOR,
						Font = Enum.Font.SourceSans,
						Text = self.makeTitle(name, Enum.Font.SourceSans, titleHeight, iconSize-outerMargin*2, "..."),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top, -- Center sinks the text down by 2 pixels
					}),
					PlayerCount = not isSponsored and Roact.createElement(LocalizedTextLabel, {
						Size = UDim2.new(1, -outerMargin*2, 0, playerCountHeight),
						Position = UDim2.new(0, outerMargin, 0, scaledDimensions.playerYCountPosition),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextSize = playerCountHeight,
						TextColor3 = COUNT_COLOR,
						Font = Enum.Font.SourceSans,
						Text = { "Feature.GamePage.LabelPlayingPhrase", playerCount = FormatInteger(playerCount) },
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top, -- Center sinks the text down by 2 pixels
					}) or nil,
					VoteFrame = not isSponsored and Roact.createElement("Frame", {
						Size = UDim2.new(1, -outerMargin*2, 0, voteFrameHeight),
						Position = UDim2.new(0, outerMargin, 0, scaledDimensions.voteFrameYPosition),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					}, {
						ThumbUpIcon = Roact.createElement("ImageLabel", {
							Size = UDim2.new(0, thumbIconSize, 0, thumbIconSize),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Image = "rbxasset://textures/ui/LuaApp/icons/ic-thumbup.png",
						}),
						VoteBar = Roact.createElement(GameVoteBar, {
							Size = UDim2.new(0, voteBarWidth, 0, voteBarHeight),
							Position = UDim2.new(0, voteBarLeftMargin, 0, voteBarTopMargin),
							BackgroundColor3 = CARD_BACKGROUND_COLOR,
							votePercentage = votePercentage,
						})
					}) or nil,
					Sponsor = isSponsored and Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, sponsorHeight+outerMargin*2),
						Position = UDim2.new(0, 0, 1, -sponsorHeight-outerMargin*2),
						BackgroundColor3 = SPONSOR_COLOR,
						BorderSizePixel = 0,
					}, {
						SponsorText = Roact.createElement(LocalizedTextLabel, {
							Size = UDim2.new(1, -outerMargin*2, 0, sponsorHeight),
							Position = UDim2.new(0, outerMargin, 0, outerMargin),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextSize = sponsorHeight,
							TextColor3 = SPONSOR_TEXT_COLOR,
							Font = Enum.Font.SourceSans,
							Text = "Feature.GamePage.Label.Sponsored",
						})
					}) or nil,
				})
			})
		end,
	})
end

GameCard = RoactRodux.connect(function(store, props)
	local state = store:getState()

	return {
		game = state.Games[props.entry.placeId],
	}
end)(GameCard)

-- Calculate the internal dimensions of various card pieces.
-- These calculations are needed in several places, so they're now all in one function:
GameCard.getDimensions = getDimensions

return GameCard