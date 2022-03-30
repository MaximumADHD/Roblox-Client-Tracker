return function()
	local InGameMenu = script.Parent.Parent
	local SetQuickActionsTooltip = require(InGameMenu.Actions.SetQuickActionsTooltip)
	local quickActions = require(script.Parent.quickActions)

	describe("SetQuickActionsTooltip", function()
		it("should correctly set the tooltip text", function()
			local testText = "Mute All"

			local oldState = quickActions(nil, {})
			local newState = quickActions(oldState, SetQuickActionsTooltip(testText))
			expect(oldState).to.never.equal(newState)
			expect(newState.tooltipText).to.equal(testText)
		end)
	end)
end
