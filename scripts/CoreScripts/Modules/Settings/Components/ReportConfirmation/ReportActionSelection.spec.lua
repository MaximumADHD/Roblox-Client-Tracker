return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ReportActionSelection = require(script.Parent.ReportActionSelection)
	local simpleMountFrame = require(game.CoreGui.RobloxGui.Modules.NotForProductionUse.UnitTestHelpers.simpleMountFrame)

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(ReportActionSelection, {}))
			cleanup()
		end)
	end)
end
