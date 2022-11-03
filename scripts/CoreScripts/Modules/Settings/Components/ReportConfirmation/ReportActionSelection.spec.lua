--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ReportActionSelection = require(script.Parent.ReportActionSelection)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(ReportActionSelection, {}))
			cleanup()
		end)
	end)
end
