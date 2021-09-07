local MockItems = {}

function MockItems.getSimpleAsset(fakeId)
	return {
		Asset = {
			Id = fakeId,
			Name = "Observation Tower",
			TypeId = 10,
			IsEndorsed = true,
		},
		Creator = {
			Id = fakeId,
			Name = "Roblox",
			Type = 1,
		},
		Thumbnail = {
			Final = true,
			Url = "rbxasset://textures/StudioToolbox/Animation.png",
			RetryUrl = nil,
			UserId = 0,
			EndpointType = "Avatar",
		},
		Voting = {
			ShowVotes = true,
			UpVotes = 4506,
			DownVotes = 581,
			CanVote = true,
			UserVote = true, -- Vote Up
			HasVoted = true,
			ReasonForNotVoteable = "",
		},
	}
end

function MockItems.getPreviewAsset(fakeId)
	return {
		Asset = {
			Id = fakeId,
			Name = "Observation Tower",
			TypeId = 10,
			IsEndorsed = true,
			AssetGenres = "",
			Description = "mocked asset item",
			Created = "2019-05-01T00:37:18.59Z",
			Updated = "2021-05-06T19:56:54.437Z",
		},
		Creator = {
			Id = fakeId,
			Name = "Roblox",
			Type = 1,
		},
		Thumbnail = {
			Final = true,
			Url = "rbxasset://textures/StudioToolbox/Animation.png",
			RetryUrl = nil,
			UserId = 0,
			EndpointType = "Avatar",
		},
		Voting = {
			ShowVotes = true,
			UpVotes = 4506,
			DownVotes = 581,
			CanVote = true,
			UserVote = true, -- Vote Up
			HasVoted = true,
			ReasonForNotVoteable = "",
		},
	}
end

return MockItems
