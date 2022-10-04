return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local SetEditingCage = require(Plugin.Src.Actions.SetEditingCage)

	local Constants = require(Plugin.Src.Util.Constants)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local EditorFrame = require(script.Parent.EditorFrame)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(EditorFrame, {
			Size = UDim2.new(0, 100, 0, 100),
			LayoutOrder = 1,
		}))
	end)
end