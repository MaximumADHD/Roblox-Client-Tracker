local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Votes = require(script.Parent)

return function()
	return {
		NoVotes = Roact.createElement(Votes, {
			Voting = {
				UpVotes = 0,
				DownVotes = 0,
			},
		}),
		AllUp = Roact.createElement(Votes, {
			Voting = {
				UpVotes = 11,
				DownVotes = 0,
			},
		}),
		AllDown = Roact.createElement(Votes, {
			Voting = {
				UpVotes = 0,
				DownVotes = 11,
			},
		}),
		Mix = Roact.createElement(Votes, {
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
			},
		}),
		NotEnoughVotes = Roact.createElement(Votes, {
			Voting = {
				Upvotes = 3,
				DownVotes = 1,
			},
		}),
		IncludeVoteCount = Roact.createElement(Votes, {
			Voting = {
				UpVotes = 31,
				DownVotes = 41,
			},
			IncludeVoteCount = true,
			TextSize = 14,
		}),
	}
end
