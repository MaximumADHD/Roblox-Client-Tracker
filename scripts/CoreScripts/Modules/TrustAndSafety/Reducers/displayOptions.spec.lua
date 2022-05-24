return function()
	local TnsModule = script.Parent.Parent
	local SetScreenSize = require(TnsModule.Actions.SetScreenSize)
	
	local displayOptions = require(script.Parent.displayOptions)

	describe("screenSize", function()
		it("should update", function()
			local screenSize = Vector2.new(1920, 1080)
			local oldState = displayOptions(nil, {})
			local newState = displayOptions(oldState, SetScreenSize(screenSize))
			expect(oldState).to.never.equal(newState)
			expect(newState.screenSize).to.equal(screenSize)
		end)
	end)
end
