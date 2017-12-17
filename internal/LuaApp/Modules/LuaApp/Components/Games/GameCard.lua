local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local DropshadowFrame = require(Modules.LuaApp.Components.DropshadowFrame)
local GameVoteBar = require(Modules.LuaApp.Components.Games.GameVoteBar)

local ICON_SIZE = 90
local OUTER_MARGIN = 6
local INNER_MARGIN = 3
local TITLE_HEIGHT = 15
local PLAYER_COUNT_HEIGHT = 15
local THUMB_ICON_SIZE = 12
local VOTE_FRAME_HEIGHT = THUMB_ICON_SIZE

local ICON_Y_POSITION = 0
local TITLE_Y_POSITION = ICON_Y_POSITION + ICON_SIZE + OUTER_MARGIN
local PLAYER_COUNT_Y_POSITION = TITLE_Y_POSITION + TITLE_HEIGHT + INNER_MARGIN
local VOTE_FRAME_Y_POSITION = PLAYER_COUNT_Y_POSITION + PLAYER_COUNT_HEIGHT + INNER_MARGIN

local CARD_WIDTH = ICON_SIZE
local CARD_HEIGHT = VOTE_FRAME_Y_POSITION + VOTE_FRAME_HEIGHT + OUTER_MARGIN

local VOTE_BAR_WIDTH = CARD_WIDTH - (OUTER_MARGIN*2 + THUMB_ICON_SIZE)
local VOTE_BAR_HEIGHT = 4
local VOTE_BAR_TOP_MARGIN = 4
local VOTE_BAR_LEFT_MARGIN = THUMB_ICON_SIZE + 3

local CARD_BACKGROUND_COLOR = Constants.Color.WHITE
local TITLE_COLOR = Constants.Color.GRAY1
local COUNT_COLOR = Constants.Color.GRAY2

local GameCard = Roact.Component:extend("GameCard")

function GameCard.size()
	return CARD_WIDTH, CARD_HEIGHT
end

function GameCard:render()
	local imageUrl = self.props.imageUrl
	local name = self.props.name
	local placeId = self.props.placeId
	local playerCount = self.props.playerCount
	local totalUpVotes = self.props.totalUpVotes
	local totalDownVotes = self.props.totalDownVotes

	local votePercentage = totalUpVotes / (totalUpVotes + totalDownVotes)

	return Roact.createElement(DropshadowFrame, {
		Size = UDim2.new(0, CARD_WIDTH, 0, CARD_HEIGHT),
		BackgroundColor3 = CARD_BACKGROUND_COLOR,
	}, {
		ButtonContainer = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			AutoButtonColor = false,

			[Roact.Event.MouseButton1Click] = function()
				local notificationType = GuiService:GetNotificationTypeList().VIEW_GAME_DETAILS
				GuiService:BroadcastNotification(string.format("%d", placeId), notificationType)
			end,
		}, {
			Icon = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				Position = UDim2.new(0, 0, 0, ICON_Y_POSITION),
				Image = imageUrl,
				BorderSizePixel = 0,
			}),
			Title = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -OUTER_MARGIN*2, 0, TITLE_HEIGHT),
				Position = UDim2.new(0, OUTER_MARGIN, 0, TITLE_Y_POSITION),
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
				Position = UDim2.new(0, OUTER_MARGIN, 0, PLAYER_COUNT_Y_POSITION),
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
				Position = UDim2.new(0, OUTER_MARGIN, 0, VOTE_FRAME_Y_POSITION),
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
					Size = UDim2.new(0, VOTE_BAR_WIDTH, 0, VOTE_BAR_HEIGHT),
					Position = UDim2.new(0, VOTE_BAR_LEFT_MARGIN, 0, VOTE_BAR_TOP_MARGIN),
					BackgroundColor3 = CARD_BACKGROUND_COLOR,
					votePercentage = votePercentage,
				})
			})
		})
	})
end

return GameCard