return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local InputBlocker = require(script.Parent)

	local function createInputBlocker()
		return Roact.createElement(InputBlocker, {
			Text = "test",
			OnFocused = function()
			end,
		})
	end

	it("should mount and unmount", function()
		runComponentTest(createInputBlocker())
	end)
end