return function()
	local Plugin = script.Parent.Parent.Parent
	local AssetConfigReducer = require(Plugin.Src.Reducers.AssetConfigReducer)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)
	it("should return a table with the correct members", function()
		local state = AssetConfigReducer(nil, {})
		expect(type(state)).to.equal("table")
		expect(state.assetConfigData).to.be.ok()
		expect(state.changed).to.be.ok()
		expect(state.totalResults).to.be.ok()
		expect(state.resultsArray).to.be.ok()
		expect(state.screenConfigs).to.be.ok()
		expect(state.filteredResultsArray).to.be.ok()
	end)

	describe("SetCurrentScreen action", function()
		local SetCurrentScreen = require(Plugin.Src.Actions.SetCurrentScreen)
		local sampleScreen = "testScreen"
		it("should set the current screen", function()
			local state = AssetConfigReducer(nil, {})
			state = AssetConfigReducer(state, SetCurrentScreen(sampleScreen))
			expect(state.currentScreen).to.equal(sampleScreen)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetConfigReducer, SetCurrentScreen(sampleScreen))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetAssetConfigData action", function()
		local SetAssetConfigData = require(Plugin.Src.Actions.SetAssetConfigData)
		local sampleData = {testData = "testData"}
		it("should set the current asset config data", function()
			local state = AssetConfigReducer(nil, {})
			state = AssetConfigReducer(state, SetAssetConfigData(sampleData))
			expect(state.assetConfigData).to.equal(sampleData)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetConfigReducer, SetAssetConfigData(sampleData))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("AddChange and ClearChange action", function()
		local AddChange = require(Plugin.Src.Actions.AddChange)
		local ClearChange = require(Plugin.Src.Actions.ClearChange)
		local settingName = "testsetting"
		local settingValue = "testval"

		it("should add and clear change data", function()
			local state = AssetConfigReducer(nil, {})

			state = AssetConfigReducer(state, AddChange(settingName, settingValue))
			expect(state.changed[settingName]).to.equal(settingValue)
			state = AssetConfigReducer(state, ClearChange(settingName))
			expect(state.changed[settingName]).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetConfigReducer, AddChange(settingName, settingValue))
			expect(immutabilityPreserved).to.equal(true)
			immutabilityPreserved = testImmutability(AssetConfigReducer, ClearChange(settingName))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("UploadResult action", function()
		local UploadResult = require(Plugin.Src.Actions.UploadResult)
		local sampledata = true
		it("should set the upload result data", function()
			local state = AssetConfigReducer(nil, {})
			state = AssetConfigReducer(state, UploadResult(sampledata))
			expect(state.uploadSucceeded).to.equal(sampledata)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(AssetConfigReducer, UploadResult(sampledata))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
