return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local InstanceSelector = require(script.Parent)

	local function createInstanceSelector()
		return Roact.createElement(InstanceSelector, {
			OnValidSelection = function()
			end,
			IsSelectedInstanceValid = function()
				return false
			end,
		})
	end

	it("should mount and unmount", function()
		runComponentTest(createInstanceSelector())
	end)
end