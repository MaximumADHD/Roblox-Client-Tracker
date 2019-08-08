return function()
	local Plugin = script.Parent.Parent.Parent

	local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
	local GetAssets = require(Plugin.Core.Actions.GetAssets)
	local SetLoading = require(Plugin.Core.Actions.SetLoading)

	local Assets = require(Plugin.Core.Reducers.Assets)

	local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)

	local networkInterfaceMock = NetworkInterfaceMock.new()

	local function tableLength(tbl)
		local i = 0
		for _ in pairs(tbl) do
			i = i + 1
		end
		return i
	end

	local function generateFakeAssetsFromIds(ids)
		local assets = { }
		for _, id in ipairs(ids) do
			assets[#assets + 1] = {
				Asset = {
					Id = id,
				},
			}
		end
		return assets
	end

	it("should return a table with the correct members", function()
		local state = Assets(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.idToAssetMap).to.be.ok()
		expect(state.idsToRender).to.be.ok()
		expect(state.isLoading).to.be.ok()
		expect(state.totalAssets).to.be.ok()
		expect(state.assetsReceived).to.be.ok()
		expect(state.hasReachedBottom).to.be.ok()
	end)

	describe("ClearAssets action", function()
		it("should clear the correct fields", function()
			local state = Assets(nil, {})

			networkInterfaceMock:resolveAssets(generateFakeAssetsFromIds({1, 2, 3}), 5):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))

				expect(tableLength(state.idToAssetMap)).to.equal(3)
				expect(tableLength(state.idsToRender)).to.equal(3)
				expect(state.totalAssets).to.equal(5)
				expect(state.assetsReceived).to.equal(3)
				expect(state.hasReachedBottom).to.equal(false)

				state = Assets(state, ClearAssets())

				expect(tableLength(state.idToAssetMap)).to.equal(3)
				expect(tableLength(state.idsToRender)).to.equal(0)
				expect(state.totalAssets).to.equal(0)
				expect(state.assetsReceived).to.equal(0)
				expect(state.hasReachedBottom).to.equal(false)
			end)
		end)
	end)

	describeSKIP("GetAssets action", function()
		it("should append assets", function()
			local state = Assets(nil, {})
			expect(tableLength(state.idToAssetMap)).to.equal(0)
			expect(tableLength(state.idsToRender)).to.equal(0)
			expect(state.totalAssets).to.equal(0)
			expect(state.assetsReceived).to.equal(0)
			expect(state.hasReachedBottom).to.equal(false)

			local totalAssets = 100 -- Arbitrarily high value as its not being tested in this case

			local firstAssets = generateFakeAssetsFromIds({1, 2, 3})
			local firstAssetsLength = tableLength(firstAssets)

			local secondAssets = generateFakeAssetsFromIds({4, 5})
			local secondAssetsLength = tableLength(secondAssets)

			local totalLength = firstAssetsLength + secondAssetsLength

			networkInterfaceMock:resolveAssets(firstAssets, totalAssets):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)

			expect(tableLength(state.idToAssetMap)).to.equal(firstAssetsLength)
			expect(tableLength(state.idsToRender)).to.equal(firstAssetsLength)
			expect(state.totalAssets).to.equal(totalAssets)
			expect(state.assetsReceived).to.equal(firstAssetsLength)
			expect(state.hasReachedBottom).to.equal(false)

			networkInterfaceMock:resolveAssets(secondAssets, totalAssets):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)

			expect(tableLength(state.idToAssetMap)).to.equal(totalLength)
			expect(tableLength(state.idsToRender)).to.equal(totalLength)
			expect(state.totalAssets).to.equal(totalAssets)
			expect(state.assetsReceived).to.equal(totalLength)
			expect(state.hasReachedBottom).to.equal(false)
		end)

		it("should set total assets correctly", function()
			local state = Assets(nil, {})
			expect(state.totalAssets).to.equal(0)

			-- Send a big number
			networkInterfaceMock:resolveAssets({}, 100):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)
			expect(state.totalAssets).to.equal(100)

			-- Then send a small number
			networkInterfaceMock:resolveAssets({}, 50):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)
			-- Should still be the larger number
			expect(state.totalAssets).to.equal(100)

			-- Then send an even bigger number
			networkInterfaceMock:resolveAssets({}, 600):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)
			-- Should now be the larger number
			expect(state.totalAssets).to.equal(600)
		end)

		it("should set hasReachedBottom", function()
			local state = Assets(nil, {})
			expect(state.hasReachedBottom).to.equal(false)

			networkInterfaceMock:resolveAssets(generateFakeAssetsFromIds({1, 2, 3}), 5):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)

			expect(tableLength(state.idsToRender)).to.equal(3)
			expect(state.totalAssets).to.equal(5)
			expect(state.assetsReceived).to.equal(3)
			expect(state.hasReachedBottom).to.equal(false)

			networkInterfaceMock:resolveAssets(generateFakeAssetsFromIds({4, 5}), 5):andThen(function(results)
				state = Assets(state, GetAssets(results.responseBody))
			end)

			expect(tableLength(state.idsToRender)).to.equal(5)
			expect(state.totalAssets).to.equal(5)
			expect(state.assetsReceived).to.equal(5)
			expect(state.hasReachedBottom).to.equal(true)
		end)
	end)

	describe("PostVote action", function()
	end)

	describe("PostUnvote action", function()
	end)

	describe("PostInsertAsset action", function()
	end)

	describe("SetLoading action", function()
		it("should set loading", function()
			local state = Assets(nil, {})
			expect(state.isLoading).to.equal(false)

			state = Assets(state, SetLoading(false))
			expect(state.isLoading).to.equal(false)

			state = Assets(state, SetLoading(true))
			expect(state.isLoading).to.equal(true)

			state = Assets(state, SetLoading(true))
			expect(state.isLoading).to.equal(true)

			state = Assets(state, SetLoading(false))
			expect(state.isLoading).to.equal(false)
		end)
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
			--[[ Default
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


