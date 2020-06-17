return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local SetRespawnBehaviour = require(Actions.SetRespawnBehaviour)

	local Respawn = require(script.Parent.Respawn)

	it("should have the correct default values", function()
		local defaultState = Respawn(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(defaultState.enabled).to.equal(true)
		expect(defaultState.customCallback).to.equal(nil)
	end)

	describe("SetRespawnBehavior", function()
		it("should change the value of enabled", function()
			local oldState = Respawn(nil, {})
			local newState = Respawn(oldState, SetRespawnBehaviour(false))
			expect(oldState).to.never.equal(newState)
			expect(newState.enabled).to.equal(false)
		end)

		it("should change the value of customCallback", function()
			local Callback = Instance.new("BindableEvent")

			local oldState = Respawn(nil, {})
			local newState = Respawn(oldState, SetRespawnBehaviour(true, Callback))
			expect(oldState).to.never.equal(newState)
			expect(newState.customCallback).to.equal(Callback)
		end)
	end)
end