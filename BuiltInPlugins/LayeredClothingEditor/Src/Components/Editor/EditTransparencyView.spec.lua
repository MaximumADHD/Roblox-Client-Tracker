return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local EditTransparencyView = require(script.Parent.EditTransparencyView)

	local function createEditTransparencyView()
		return Roact.createElement(EditTransparencyView)
	end

	it("should mount and unmount", function()
		runComponentTest(createEditTransparencyView())
	end)
end