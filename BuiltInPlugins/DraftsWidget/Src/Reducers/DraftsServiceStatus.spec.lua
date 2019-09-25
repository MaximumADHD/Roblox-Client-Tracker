local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local DraftsServiceStatus = require(script.Parent.DraftsServiceStatus)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)
local DraftsServiceLoaded = require(Plugin.Src.Actions.DraftsServiceLoaded)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(DraftsServiceStatus)
		expect(r:getState()).to.be.ok()
		expect(r:getState().Enabled).to.equal(nil)
	end)

	describe("DraftsServiceLoaded", function()
		it("should set Enabled", function()
			local state = DraftsServiceStatus(nil, DraftsServiceLoaded(true, {}))

			expect(state).to.be.ok()
			expect(state.Enabled).to.equal(true)
			expect(state.Error).to.equal(nil)
		end)

		it("should set Error", function()
			local state = DraftsServiceStatus(nil, DraftsServiceLoaded(false, "TestError"))

			expect(state).to.be.ok()
			expect(state.Enabled).to.equal(false)
			expect(state.Error).to.equal("TestError")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(DraftsServiceStatus, DraftsServiceLoaded(true, {}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end