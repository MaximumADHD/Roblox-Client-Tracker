local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local AssetPreviewDetails = require(script.Parent)
local Container = require(Framework.UI.Components.Container)

return function()
	return {
		Everything = Roact.createElement(AssetPreviewDetails, {
			Favorites = {
				Count = 10500,
				IsFavorited = false,
				OnClick = function() end,
			},
			HasScripts = true,
			IsPackage = true,
			LastUpdatedDate = "2016-06-14T18:43:37Z",
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
			},
		}),

		HasScripts = Roact.createElement(AssetPreviewDetails, {
			Favorites = nil,
			HasScripts = true,
			IsPackage = false,
			LastUpdatedDate = "2016-06-14T18:43:37Z",
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
			},
		}),

		IsPackage = Roact.createElement(AssetPreviewDetails, {
			Favorites = nil,
			HasScripts = false,
			IsPackage = true,
			LastUpdatedDate = "2016-06-14T18:43:37Z",
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
			},
		}),

		IsPackageNoUpdateDate = Roact.createElement(AssetPreviewDetails, {
			Favorites = nil,
			HasScripts = false,
			IsPackage = true,
			LastUpdatedDate = nil,
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
			},
		}),

		LowWidth = Roact.createElement(Container, {
			Size = UDim2.new(0, 183, 0, 30),
		}, {
			AssetPreviewDetails = Roact.createElement(AssetPreviewDetails, {
				-- Favorites = {},
				HasScripts = true,
				IsPackage = true,
				LastUpdatedDate = "2016-06-14T18:43:37Z",
				Voting = {
					UpVotes = 55,
					DownVotes = 0,
					CanVote = true,
					UserVote = false,
				},
			}),
		}),

		NoVotes = Roact.createElement(AssetPreviewDetails, {
			Favorites = nil,
			HasScripts = false,
			IsPackage = false,
			LastUpdatedDate = "2016-06-14T18:43:37Z",
			Voting = {
				UpVotes = 0,
				DownVotes = 0,
			},
		}),

		VotesOnly = Roact.createElement(AssetPreviewDetails, {
			Favorites = nil,
			HasScripts = false,
			IsPackage = false,
			LastUpdatedDate = "2016-06-14T18:43:37Z",
			Voting = {
				UpVotes = 55,
				DownVotes = 44,
				CanVote = true,
			},
		}),
	}
end
