local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)
local GameVoteBar = require(Modules.LuaApp.Components.Games.GameVoteBar)
local GameThumbnail = require(Modules.LuaApp.Components.GameThumbnail)

-- Define static positions on the card:
local DEFAULT_ICON_SIZE = 90
local ICON_Y_POSITION = 0

local OUTER_MARGIN = 6
local INNER_MARGIN = 3
local TITLE_HEIGHT = 15
local PLAYER_COUNT_HEIGHT = 15
local THUMB_ICON_SIZE = 12
local VOTE_FRAME_HEIGHT = THUMB_ICON_SIZE

local VOTE_BAR_HEIGHT = 4
local VOTE_BAR_TOP_MARGIN = 4
local VOTE_BAR_LEFT_MARGIN = THUMB_ICON_SIZE + 3

local CARD_BACKGROUND_COLOR = Constants.Color.WHITE
local TITLE_COLOR = Constants.Color.GRAY1
local COUNT_COLOR = Constants.Color.GRAY2


local GameCard = Roact.Component:extend("GameCard")

-- Calculate the internal dimensions of various card pieces.
-- These calculations are needed in several places, so they're now all in one function:
function GameCard.getDimensions(newIconSize)
	local iconSize = newIconSize or DEFAULT_ICON_SIZE
	local dimensions = {}

	-- Width is simple:
	dimensions.cardWidth = iconSize

	-- Height depends on the size of the icon plus other components:
	dimensions.titleYPosition = ICON_Y_POSITION + OUTER_MARGIN + iconSize
	dimensions.playerYCountPosition = dimensions.titleYPosition + TITLE_HEIGHT + INNER_MARGIN
	dimensions.voteFrameYPosition = dimensions.playerYCountPosition + PLAYER_COUNT_HEIGHT + INNER_MARGIN
	dimensions.cardHeight = dimensions.voteFrameYPosition + VOTE_FRAME_HEIGHT + OUTER_MARGIN

	return dimensions
end

function GameCard:render()
	local game = self.props.game
	local iconSize = self.props.iconSize
	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position

	local name = game.name
	local placeId = game.placeId
	local playerCount = game.playerCount
	local totalDownVotes = game.totalDownVotes
	local totalUpVotes = game.totalUpVotes

	local totalVotes = (totalUpVotes + totalDownVotes)
	if totalVotes == 0 then
		totalVotes = 1
	end
	local votePercentage = totalUpVotes / totalVotes

	-- Use a custom icon size if it's passed to us - this will scale the rest of the card to fit:
	if (iconSize == nil) then
		iconSize = DEFAULT_ICON_SIZE
	end
	local dimensions = self.getDimensions(iconSize)
	local voteBarWidth = dimensions.cardWidth - (OUTER_MARGIN*2 + THUMB_ICON_SIZE)

	return Roact.createElement(DropshadowFrame, {
		AnchorPoint = anchorPoint,
		BackgroundColor3 = CARD_BACKGROUND_COLOR,
		Position = position,
		Size = UDim2.new(0, dimensions.cardWidth, 0, dimensions.cardHeight),
		LayoutOrder = layoutOrder,
	}, {
		ButtonContainer = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			AutoButtonColor = false,

			[Roact.Event.Activated] = function()
				local notificationType = GuiService:GetNotificationTypeList().VIEW_GAME_DETAILS
				GuiService:BroadcastNotification(string.format("%d", placeId), notificationType)
			end,
		}, {
			Icon = Roact.createElement(GameThumbnail, {
				Size = UDim2.new(0, iconSize, 0, iconSize),
				Position = UDim2.new(0, 0, 0, ICON_Y_POSITION),
				placeId = placeId,
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.GRAY5,
				loadingImage = "rbxasset://textures/ui/LuaApp/icons/ic-game.png",
			}),
			Title = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -OUTER_MARGIN*2, 0, TITLE_HEIGHT),
				Position = UDim2.new(0, OUTER_MARGIN, 0, dimensions.titleYPosition),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextSize = TITLE_HEIGHT,
				TextColor3 = TITLE_COLOR,
				ClipsDescendants = true,
				Font = Enum.Font.SourceSans,
				Text = name,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			PlayerCount = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -OUTER_MARGIN*2, 0, PLAYER_COUNT_HEIGHT),
				Position = UDim2.new(0, OUTER_MARGIN, 0, dimensions.playerYCountPosition),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextSize = PLAYER_COUNT_HEIGHT,
				TextColor3 = COUNT_COLOR,
				Font = Enum.Font.SourceSans,
				Text = playerCount,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			VoteFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, -OUTER_MARGIN*2, 0, VOTE_FRAME_HEIGHT),
				Position = UDim2.new(0, OUTER_MARGIN, 0, dimensions.voteFrameYPosition),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				ThumbUpIcon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, THUMB_ICON_SIZE, 0, THUMB_ICON_SIZE),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Image = "rbxasset://textures/ui/LuaApp/icons/ic-thumbup.png",
				}),
				VoteBar = Roact.createElement(GameVoteBar, {
					Size = UDim2.new(0, voteBarWidth, 0, VOTE_BAR_HEIGHT),
					Position = UDim2.new(0, VOTE_BAR_LEFT_MARGIN, 0, VOTE_BAR_TOP_MARGIN),
					BackgroundColor3 = CARD_BACKGROUND_COLOR,
					votePercentage = votePercentage,
				})
			})
		})
	})
end

return GameCard