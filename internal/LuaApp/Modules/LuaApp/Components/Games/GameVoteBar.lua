local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)

local VOTE_MASK_SIZE = 1
local VOTE_BAR_BACKGROUND_COLOR = Constants.Color.GRAY3
local VOTE_BAR_FOREGROUND_COLOR = Constants.Color.GRAY2

local GameVoteBar = Roact.Component:extend("GameVoteBar")

function GameVoteBar:render()
	local size = self.props.Size
	local position = self.props.Position
	local maskColor = self.props.BackgroundColor3
	local votePercentage = self.props.votePercentage

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		BackgroundColor3 = VOTE_BAR_BACKGROUND_COLOR,
		BorderSizePixel = 0,
	}, {
		VotePercentage = Roact.createElement("Frame", {
			Size = UDim2.new(votePercentage, 0, 1, 0),
			BackgroundColor3 = VOTE_BAR_FOREGROUND_COLOR,
			BorderSizePixel = 0,
		}, {
			VoteMask1 = Roact.createElement("Frame", {
				Size = UDim2.new(0, VOTE_MASK_SIZE, 1, 0),
				Position = UDim2.new(0.2 * 1/votePercentage, -VOTE_MASK_SIZE/2, 0, 0),
				BackgroundColor3 = maskColor,
				BorderSizePixel = 0,
			}),
			VoteMask2 = Roact.createElement("Frame", {
				Size = UDim2.new(0, VOTE_MASK_SIZE, 1, 0),
				Position = UDim2.new(0.4 * 1/votePercentage, -VOTE_MASK_SIZE/2, 0, 0),
				BackgroundColor3 = maskColor,
				BorderSizePixel = 0,
			}),
			VoteMask3 = Roact.createElement("Frame", {
				Size = UDim2.new(0, VOTE_MASK_SIZE, 1, 0),
				Position = UDim2.new(0.6 * 1/votePercentage, -VOTE_MASK_SIZE/2, 0, 0),
				BackgroundColor3 = maskColor,
				BorderSizePixel = 0,
			}),
			VoteMask4 = Roact.createElement("Frame", {
				Size = UDim2.new(0, VOTE_MASK_SIZE, 1, 0),
				Position = UDim2.new(0.8 * 1/votePercentage, -VOTE_MASK_SIZE/2, 0, 0),
				BackgroundColor3 = maskColor,
				BorderSizePixel = 0,
			}),
		})
	})
end

return GameVoteBar