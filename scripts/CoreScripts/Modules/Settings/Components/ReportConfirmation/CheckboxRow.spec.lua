--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckboxRow = require(script.Parent.CheckboxRow)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function(context)
			local _, cleanup = simpleMountFrame(Roact.createElement(CheckboxRow, {}))
			cleanup()
		end)
	end)
end
