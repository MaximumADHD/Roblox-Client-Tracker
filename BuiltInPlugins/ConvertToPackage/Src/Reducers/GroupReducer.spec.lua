return function()
	local Plugin = script.Parent.Parent.Parent
	local GroupReducer = require(Plugin.Src.Reducers.GroupReducer)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	it("should return a table with the correct members", function()
		local state = GroupReducer(nil, {})
		expect(type(state)).to.equal("table")
		expect(state.groupsArray).to.be.ok()
	end)

	describe("SetMyGroups action", function()
		local SetMyGroups = require(Plugin.Src.Actions.SetMyGroups)
		local sampledata = {test = "test"}
		it("should set the my groups data", function()
			local state = GroupReducer(nil, {})
			state = GroupReducer(state, SetMyGroups(sampledata))
			expect(state.groupsArray).to.equal(sampledata)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GroupReducer, SetMyGroups(sampledata))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetAssetGroupData action", function()
		local SetAssetGroupData = require(Plugin.Src.Actions.SetAssetGroupData)
		local sampledata = {test = "test"}
		it("should set the current asset group data", function()
			local state = GroupReducer(nil, {})
			state = GroupReducer(state, SetAssetGroupData(sampledata))
			expect(state.assetGroupData).to.equal(sampledata)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(GroupReducer, SetAssetGroupData(sampledata))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
