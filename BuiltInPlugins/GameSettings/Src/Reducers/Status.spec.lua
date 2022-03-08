return function()
	local Plugin = script.Parent.Parent.Parent

	local Rodux = require(Plugin.Packages.Rodux)

	local StatusReducer = require(Plugin.Src.Reducers.Status)

	local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
	local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

	it("should initialize with Closed if given nil", function()
		local store = Rodux.Store.new(StatusReducer)
		expect(store:getState()).to.be.ok()
		expect(store:getState()).to.equal(CurrentStatus.Closed)
	end)

	describe("SetCurrentStatus", function()
		it("should modify the store's status", function()
			local store = Rodux.Store.new(StatusReducer)

			store:dispatch(SetCurrentStatus(CurrentStatus.Open))

			expect(store:getState()).to.equal(CurrentStatus.Open)
		end)
	end)
end