return function()
	local Plugin = script.Parent.Parent.Parent

	local VotingReducer = require(Plugin.Core.Reducers.VotingReducer)

	it("should return a table with the correct members", function()
		local state = VotingReducer(nil, {})

		expect(type(state)).to.equal("table")
	end)

	describe("GetAssets action", function()
	end)

	describe("PostVote action", function()
	end)

	describe("PostUnvote action", function()
	end)

	describe("PostInsertAsset action", function()
	end)

	--[==[
	describe("Post Unvote actions", function()
		it("Voting.HasVoted should be false", function()
			local defaultState = Assets(nil, {})
			local newState = {}
			NetworkInterfaceMock:getAssets(nil, nil, nil, 2):andThen(function(results)
				newState = Assets(defaultState, {type = "GetAssets", itemList = results.responseBody})
				newState = Assets(newState, {type = "PostUnvote", {assetId = 2, unvoteResponse = true}})

				expect(newState.itemList.Results[1].Voting.HasVoted).to.equal(false)
			end)
		end)

		it("Other property under Voting shouldn't be changed", function()
			local defaultState = Assets(nil, {})
			NetworkInterfaceMock:getAssets(nil, nil, nil, 2):andThen(function(results)
				local newState = Assets(defaultState, {type = "GetAssets", itemList = results.responseBody})
				newState = Assets(newState, {type = "PostUnvote", {assetId = 2, unvoteResponse = true}})

				-- Comparing item one to item two
				local item1Voting = newState.itemList.Results[1].Voting
				local item2Voting = newState.itemList.Results[2].Voting
				expect(item1Voting[HasVoted]).never.equal(item2Voting[HasVoted])
				expect(item1Voting[ShowVotes]).to.equal(item2Voting[ShowVotes])
				expect(item1Voting[CanVote]).to.equal(item2Voting[CanVote])
			end)
		end)
	end)

	describe("Post Vote actions", function()
		it("Voting.HasVoted should be true", function()
			local defaultState = Assets(nil, {})
			NetworkInterfaceMock:getAssets(nil, nil, nil, 2):andThen(function(results)
			--[[ Defualt
				Voting = {
					UserVote = true,
					HasVoted = true,
				}
			]]
				local newState = Assets(defaultState, {type = "GetAssets", itemList = results.responseBody})
				newState = Assets(newState, {type = "PostUnvote", {assetId = 2, unvoteResponse = true}})
			-- Comparing UserVote and HasVoted
			-- start with
			--[[
				Voting ={
					UserVote = true,
					HasVoted = true,
				},
				Voting ={
					UserVote = true,
					HasVoted = false,
				}
			]]

				-- Check what happens if PostVote on already voted item
				local item1Voting = newState[Results][1][Voting]
				newState = Assets(newState, {type = "PostVote", {assetId = 1, voteResponse = false}})
				expect(item1Voting[UserVote]).to.equal(false)
				expect(item1Voting[HasVoted]).to.equal(true)

				-- Check what happens if PostVote on not voted item
				local item2Voting = newState[Results][2][Voting]
				newState = Assets(newState, {type = "PostVote", {assetId = 2, voteResponse = false}})
				expect(item2Voting[UserVote]).to.equal(false)
				expect(item2Voting[HasVoted]).to.equal(true)
			end)
		end)

		it("Voting.UserVote should be the results from PostVote actions", function()
			local defaultState = Assets(nil, {})
			NetworkInterfaceMock:getAssets(nil, nil, nil, 2):andThen(function(results)
				local newState = Assets(defaultState, {type = "GetAssets", itemList = results.responseBody})
				newState = Assets(newState, {type = "PostUnvote", {assetId = 1, unvoteResponse = true}})

				local item1Vote = newState.itemList.Results[1].Voting
				newState = Assets(newState, {type = "PostVote", {assetId = 1, voteResponse = false}})
				expect(item1Vote.HasVoted).to.equal(true)
				expect(item1Vote.UserVote).to.equal(false)

				newState = Assets(newState, {type = "PostVote", {assetId = 1, voteResponse = true}})
				expect(item1Vote.HasVoted).to.equal(true)
				expect(item1Vote.UserVote).to.equal(true)
			end)
		end)
	end)

	describe("Post Insert Asset actions", function()
		it("Voting.ShowVotes should be false by the PostInsertAsset actions", function()
			local defaultState = Assets(nil, {})
			NetworkInterfaceMock:getAssets(nil, nil, nil, 2):andThen(function(results)
				local newState = Assets(defaultState, {type = "GetAssets", itemList = results.responseBody})
				newState = Assets(newState, {type = "PostInsertAsset", {assetId = 1, insertResponse = true}})

				local item1Voting = newState.itemList.Results[1].Voting
				expect(item1Voting.ShowVotes).to.equal(false)
			end)
		end)

		it("other thing under Voting should be unchanged", function()
			local defaultState = Assets(nil, {})
			NetworkInterfaceMock:getAssets(nil, nil, nil, 2):andThen(function(results)
				local newState = Assets(defaultState, {type = "GetAssets", itemList = results.responseBody})
				newState = Assets(newState, {type = "PostInsertAsset", {assetId = 1, insertResponse = true}})

				local item1Voting = newState.itemList.Results[1].Voting
				local item2Voting = newState[Results][2][Voting]
				expect(item1Voting[CanVote]).to.equal(item2Voting[CanVote])
				expect(item1Voting[UserVote]).to.equal(item2Voting[UserVote])
				expect(item1Voting[HasVoted]).to.equal(item2Voting[HasVoted])
			end)
		end)
	end)]==]
end


