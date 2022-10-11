return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local GenerateScreen = require(script.Parent.GenerateScreen)

	local function createGenerateScreen()
		return Roact.createElement(GenerateScreen, {
			GoToNext = function() end,
			GoToPrevious = function() end,
		})
	end

	it("should mount and unmount", function()
		runComponentTest(createGenerateScreen())
	end)

	it("should render correctly", function ()
		runComponentTest(
			createGenerateScreen(),
			function(container)
				local frame = container:FindFirstChildOfClass("Frame")
				local nextButton = frame.NextButton
				local backButton = frame.BackButton

				expect(frame).to.be.ok()
				expect(nextButton).to.be.ok()
				expect(backButton).to.be.ok()
			end
		)
	end)

end