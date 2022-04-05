return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local AnimationPlayback = require(script.Parent)

	local function createAnimationPlayback()
		return Roact.createElement(AnimationPlayback, {
			PreviewAvatars = {},
			OnPlayheadChanged = function() end,
			OnTrackLengthChanged = function() end,
			OnIsPlayingChanged = function() end,
		})
	end

	it("should create and destroy without errors", function()
		runComponentTest(createAnimationPlayback())
	end)
end