return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local TestHelper = require(Plugin.Src.Utility.TestHelper)
	local TestRunner = require(Plugin.Src.Utility.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local EditPivotSession = require(Plugin.Src.RoduxComponents.EditPivotSession)

	it("should create and destroy without errors", function()
		runComponentTest(
			Roact.createElement(EditPivotSession, {
				DraggerContext = TestHelper.createTestDraggerContext(),
			})
		)
	end)
end
