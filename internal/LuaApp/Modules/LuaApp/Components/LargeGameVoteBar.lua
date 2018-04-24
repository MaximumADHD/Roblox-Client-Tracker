local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local GameVoteBar = require(Modules.LuaApp.Components.Games.GameVoteBar)
local Constants = require(Modules.LuaApp.Constants)

local VOTE_BAR_SIZE = 6
local VOTE_BAR_Y = 2
local COUNT_SIZE = 20

local function LargeGameVoteBar(props)
	local frameProps = props.frameProps
	local iconSize = props.iconSize
	local upVotes = props.upVotes
	local downVotes = props.downVotes

	local percent
	if upVotes + downVotes == 0 then
		percent = upVotes
	else
		percent = upVotes/(upVotes + downVotes)
	end

	return Roact.createElement("Frame", frameProps, {
		VoteUp = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, iconSize, 0, iconSize),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-thumbs-up.png",
		}),
		VoteUpCount = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, iconSize, 1, -COUNT_SIZE),
			Size = UDim2.new(0, 0, 0, COUNT_SIZE),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Constants.Color.GREEN_PRIMARY,
			Text = tostring(upVotes),
		}),
		VoteBar = Roact.createElement(GameVoteBar, {
			Size = UDim2.new(1, -2*iconSize, 0, VOTE_BAR_SIZE),
			Position = UDim2.new(0, iconSize, 0, VOTE_BAR_Y),
			votePercentage = percent,
		}),
		VoteDown = Roact.createElement("ImageButton", {
			Position = UDim2.new(1, -iconSize, 0, 0),
			Size = UDim2.new(0, iconSize, 0, iconSize),
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-thumbs-down.png",
		}),
		VoteDownCount  = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(1, -iconSize, 1, -COUNT_SIZE),
			Size = UDim2.new(0, 0, 0, COUNT_SIZE),
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Constants.Color.RED_NEGATIVE,
			Text = tostring(downVotes),
		}),
	})
end

return LargeGameVoteBar