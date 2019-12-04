local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local TestImmutability = require(Plugin.Src.TestHelpers.testImmutability)

local MockStudioPlugin = require(Plugin.Src.TestHelpers.MockStudioPlugin)
local LoadPolicySettings = require(Plugin.Src.Actions.LoadPolicySettings)
local UpdatePolicyBooleanItem = require(Plugin.Src.Actions.UpdatePolicyBooleanItem)
local UpdatePolicyListItem = require(Plugin.Src.Actions.UpdatePolicyListItem)

local PoliciesReducer = require(Plugin.Src.Reducers.PoliciesReducer)

local mockAllPolicies = {
	boolItem1 = false,
	boolItem2 = false,
	listItem1 = {
		"hello",
		"world",
	},
	listItem2 = {
		"aloha",
	}
}

local mockAllPoliciesState = {
	allPolicies = {
		BoolItem1 = false,
		BoolItem2 = false,
		ListItem1 = {
			"aloha",
			"hola",
		}
	}
}

local mockPoliciesState = {
	allPolicies = {
		BoolItem1 = false,
		BoolItem2 = false,
		ListItem1 = {
			"aloha",
			"hola",
		}
	},
	policySettingStatus = {
		BoolItem1 = true,
		BoolItem2 = false,
		ListItem1 = {
			"hola",
		}
	},
}

local mockHttpResponse = {
	boolItem1 = true,
	boolItem2 = false,
	listItem1 = {},
}

local mockCache = {
	BoolItem1 = false,
	BoolItem2 = true,
	ListItem1 = {
		"aloha",
	},
}

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(PoliciesReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().allPolicies)).to.equal("table")
		expect(type(r:getState().allPolicySortedKeys)).to.equal("table")
		expect(type(r:getState().policySettingStatus)).to.equal("table")
	end)

	describe("LoadPolicySettings", function()
		it("should load fallback policy settings when http failed and empty local cache", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockAllPoliciesState, LoadPolicySettings(mockAllPolicies, {}, mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.allPolicySortedKeys).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(state.policySettingStatus.BoolItem1).to.equal(state.allPolicies.BoolItem1)
			expect(state.policySettingStatus.BoolItem2).to.equal(state.allPolicies.BoolItem2)
			expect(#state.policySettingStatus.ListItem1).to.equal(#state.allPolicies.ListItem1)
			expect(#state.policySettingStatus.ListItem2).to.equal(#state.allPolicies.ListItem2)
		end)

		it("should load policy api settings when http success and empty local cache", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockAllPoliciesState, LoadPolicySettings(mockAllPolicies, mockHttpResponse, mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(state.policySettingStatus.BoolItem1).to.equal(mockHttpResponse.boolItem1)
			expect(state.policySettingStatus.BoolItem2).to.equal(mockHttpResponse.boolItem2)
			expect(#state.policySettingStatus.ListItem1).to.equal(#mockHttpResponse.listItem1)
		end)

		it("should load local cache settings when http success and has local cache", function()
			local mockPlugin = MockStudioPlugin:new(mockCache)
			local state = PoliciesReducer(mockAllPoliciesState, LoadPolicySettings(mockAllPolicies, mockHttpResponse, mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(state.policySettingStatus.BoolItem1).to.equal(mockCache.BoolItem1)
			expect(state.policySettingStatus.BoolItem2).to.equal(mockCache.BoolItem2)
			expect(#state.policySettingStatus.ListItem1).to.equal(#mockCache.ListItem1)
		end)

		it("should load local cache when http failed and has local cache", function()
			local mockPlugin = MockStudioPlugin:new(mockCache)
			local state = PoliciesReducer(mockAllPoliciesState, LoadPolicySettings(mockAllPolicies, {}, mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(state.policySettingStatus.BoolItem1).to.equal(mockCache.BoolItem1)
			expect(state.policySettingStatus.BoolItem2).to.equal(mockCache.BoolItem2)
			expect(#state.policySettingStatus.ListItem1).to.equal(#mockCache.ListItem1)
		end)

		it("should preserve immutability", function()
			local mockPlugin = MockStudioPlugin:new(mockCache)
			local immutabilityPreserved = TestImmutability(PoliciesReducer, LoadPolicySettings(mockAllPolicies, mockHttpResponse, mockPlugin))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("UpdatePolicyBooleanItem", function()
		it("should update BoolItem2 to true", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockPoliciesState, UpdatePolicyBooleanItem("BoolItem2", true, mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(state.policySettingStatus.BoolItem2).to.equal(true)
			expect(mockPlugin:GetSetting().BoolItem2).to.equal(true)
		end)

		it("should not update BoolItem3 since key not exist", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockPoliciesState, UpdatePolicyBooleanItem("BoolItem3", true, mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(state.policySettingStatus.BoolItem3).to.equal(nil)
			expect(mockPlugin:GetSetting()).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local mockPlugin = MockStudioPlugin:new()
			local immutabilityPreserved = TestImmutability(PoliciesReducer, UpdatePolicyBooleanItem("BoolItem2", true, mockPlugin))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("UpdatePolicyListItem", function()
		it("should add aloha to ListItem1", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockPoliciesState, UpdatePolicyListItem("ListItem1", "aloha", mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			assert(Cryo.List.find(state.policySettingStatus.ListItem1, "aloha") > 0)
			assert(Cryo.List.find(mockPlugin:GetSetting().ListItem1, "aloha") > 0)
		end)

		it("should not update hello to ListItem1", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockPoliciesState, UpdatePolicyListItem("ListItem1", "hello", mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(Cryo.List.find(state.policySettingStatus.ListItem1, "hello")).to.equal(nil)
			expect(mockPlugin:GetSetting()).to.equal(nil)
		end)

		it("should remove hola to ListItem1", function()
			local mockPlugin = MockStudioPlugin:new()
			local state = PoliciesReducer(mockPoliciesState, UpdatePolicyListItem("ListItem1", "hola", mockPlugin))
			expect(state.allPolicies).to.be.ok()
			expect(state.policySettingStatus).to.be.ok()
			expect(type(state.allPolicies)).to.equal("table")
			expect(type(state.policySettingStatus)).to.equal("table")
			expect(Cryo.List.find(state.policySettingStatus.ListItem1, "hola")).to.equal(nil)
			expect(Cryo.List.find(mockPlugin:GetSetting().ListItem1, "hola")).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local mockPlugin = MockStudioPlugin:new()
			local immutabilityPreserved = TestImmutability(PoliciesReducer, UpdatePolicyListItem("ListItem1", "aloha", mockPlugin))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end