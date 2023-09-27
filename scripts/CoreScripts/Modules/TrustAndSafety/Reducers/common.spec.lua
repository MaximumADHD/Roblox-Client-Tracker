return function()
	local CorePackages = game:GetService("CorePackages")

	local TnsModule = script.Parent.Parent
	local ShowToast = require(TnsModule.Actions.ShowToast)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local common = require(script.Parent.common)

	describe("toastTitle", function()
		it("should update", function()
			local testText = "test text"
			local oldState = common(nil, {})
			local newState = common(oldState, ShowToast(testText))
			expect(oldState).never.toBe(newState)
			expect(newState.toastTitle).toBe(testText)
		end)
	end)
end
