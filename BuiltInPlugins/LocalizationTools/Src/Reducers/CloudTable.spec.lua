local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local SetIsBusy = require(Plugin.Src.Actions.SetIsBusy)
local CloudTable = require(script.Parent.CloudTable)

return function()
	it("should return a table with the correct members", function()
		local state = CloudTable(nil, {})
		expect(type(state)).to.equal("table")
		expect(state.IsBusy).to.be.ok()
	end)

	describe("SetIsBusy", function()
		it("should validate input", function()
			expect(function()
				SetIsBusy(nil)
			end).to.throw()
			expect(function()
				SetIsBusy("some string")
			end).to.throw()
			expect(function()
				SetIsBusy({})
			end).to.throw()
		end)

		it("should set state", function()
			local r = Rodux.Store.new(CloudTable)
			local state = r:getState()
			expect(state.IsBusy).to.equal(false)

			state = CloudTable(state, SetIsBusy(true))
			expect(state.IsBusy).to.equal(true)

			state = CloudTable(state, SetIsBusy(false))
			expect(state.IsBusy).to.equal(false)
		end)
	end)
end