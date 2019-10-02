local PluginInfo = require(script.Parent.PluginInfo)

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestHelpers = require(Plugin.Packages.TestHelpers)

local ClearPluginData = require(Plugin.Src.Actions.ClearPluginData)
local SetPluginId = require(Plugin.Src.Actions.SetPluginId)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(PluginInfo)
		expect(r:getState()).to.be.ok()
		expect(r:getState().pluginId).to.equal(nil)
	end)

	describe("ClearPluginData", function()
		it("should return the state to an empty table", function()
			local state = PluginInfo({
				pluginId = "1234"
			}, ClearPluginData())

			expect(state).to.be.ok()
			expect(state.pluginId).to.equal(nil)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestHelpers.testImmutability(PluginInfo, ClearPluginData())
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPluginId", function()
		it("should set the pluginId", function()
			local state = PluginInfo(nil, SetPluginId("1234"))

			expect(state).to.be.ok()
			expect(state.pluginId).to.equal("1234")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestHelpers.testImmutability(PluginInfo, SetPluginId("1234"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end