return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local WorkspaceEditorControls = require(script.Parent.WorkspaceEditorControls)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(WorkspaceEditorControls))
	end)
end
