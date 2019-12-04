return function()
	local InGameMenu = script.Parent.Parent
	local SetInspectMenuEnabled = require(InGameMenu.Actions.SetInspectMenuEnabled)
	local displayOptions = require(script.Parent.displayOptions)

	it("should have inspectMenuEnabled = true by default", function()
		local defaultState = displayOptions(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(defaultState.inspectMenuEnabled).to.equal(true)
	end)

	describe("SetInspectMenuEnabled", function()
		it("should change the value of inspectMenuEnabled", function()
			local oldState = displayOptions(nil, {})
			local newState = displayOptions(oldState, SetInspectMenuEnabled(false))
			expect(oldState).to.never.equal(newState)
			expect(newState.inspectMenuEnabled).to.equal(false)
		end)
	end)
end