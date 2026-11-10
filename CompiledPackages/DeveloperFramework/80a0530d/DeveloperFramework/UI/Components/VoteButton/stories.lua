local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local VoteButton = require(script.Parent)

return function()
	return {
		UpVote = Roact.createElement(VoteButton, {
			AssetId = 123,
			CanVote = true,
			OnClick = function() end,
			VoteType = VoteButton.VoteType.UpVote,
		}),

		DownVote = Roact.createElement(VoteButton, {
			AssetId = 123,
			CanVote = true,
			OnClick = function() end,
			VoteType = VoteButton.VoteType.DownVote,
		}),

		DisabledVote = Roact.createElement(VoteButton, {
			AssetId = 123,
			CanVote = false,
			OnClick = function() end,
			VoteType = VoteButton.VoteType.DownVote,
		}),

		HasVotedDown = Roact.createElement(VoteButton, {
			AssetId = 123,
			CanVote = true,
			OnClick = function() end,
			UserVote = false,
			VoteType = VoteButton.VoteType.DownVote,
		}),

		HasVotedUp = Roact.createElement(VoteButton, {
			AssetId = 123,
			CanVote = true,
			OnClick = function() end,
			UserVote = true,
			VoteType = VoteButton.VoteType.UpVote,
		}),
	}
end
