return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local AnimPlaybackSlider = require(script.Parent)

	local function createAnimPlaybackSlider()
		return Roact.createElement(AnimPlaybackSlider, {
			Size = UDim2.new(0, 20, 0, 20),
			IsPlaying = false,
			Playhead = 0,
			OnSliderPlayheadChanged = function() end,
			OnPlayPauseClicked = function() end,
		})
	end

	it("should create and destroy without errors", function()
		runComponentTest(createAnimPlaybackSlider())
	end)

	it("should render correctly", function ()
		runComponentTest(
			createAnimPlaybackSlider(),
			function(container)
				local frame = container:FindFirstChildOfClass("Frame")
				local PlayPauseButton = frame.PlayPauseButton
				local PlayTimeLabel = frame.PlayTimeLabel
				expect(frame).to.be.ok()
				expect(PlayPauseButton).to.be.ok()
				expect(PlayTimeLabel).to.be.ok()
			end
		)
	end)
end