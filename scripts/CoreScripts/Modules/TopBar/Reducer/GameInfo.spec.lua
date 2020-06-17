return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local SetGameName = require(Actions.SetGameName)

	local GameInfo = require(script.Parent.GameInfo)

	it("should have the correct default values", function()
		local defaultState = GameInfo(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(defaultState.name).to.equal("Game")
	end)

	describe("SetGameName", function()
		it("should change the value of name", function()
			local oldState = GameInfo(nil, {})
			local newState = GameInfo(oldState, SetGameName("Test"))
			expect(oldState).to.never.equal(newState)
			expect(newState.name).to.equal("Test")
		end)
	end)
end