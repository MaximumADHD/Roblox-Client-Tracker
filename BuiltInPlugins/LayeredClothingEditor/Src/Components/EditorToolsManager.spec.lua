return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local EditorToolsManager = require(script.Parent.EditorToolsManager)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(EditorToolsManager))
	end)
end