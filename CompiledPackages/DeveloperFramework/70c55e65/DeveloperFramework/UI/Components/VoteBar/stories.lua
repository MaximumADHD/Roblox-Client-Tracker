local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local VoteBar = require(script.Parent)
local Container = require(Framework.UI.Components.Container)

return function()
	return {
		NoVotes = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 0,
				DownVotes = 0,
			},
		}),
		AllUp = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 111,
				DownVotes = 0,
			},
		}),
		AllDown = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 0,
				DownVotes = 111,
			},
		}),
		Mix = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
			},
		}),
		CanVote = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
			},
		}),
		HasVotedUp = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
				UserVote = true,
			},
		}),
		HasVotedDown = Roact.createElement(VoteBar, {
			AssetId = 123,
			OnVoteUp = function() end,
			OnVoteDown = function() end,
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
				UserVote = false,
			},
		}),
		LowWidth = Roact.createElement(Container, {
			Size = UDim2.new(0, 183, 0, 30),
		}, {
			VoteBar = Roact.createElement(VoteBar, {
				AssetId = 123,
				OnVoteUp = function() end,
				OnVoteDown = function() end,
				Voting = {
					UpVotes = 55,
					DownVotes = 0,
					CanVote = true,
					UserVote = false,
				},
			}),
		}),
	}
end
