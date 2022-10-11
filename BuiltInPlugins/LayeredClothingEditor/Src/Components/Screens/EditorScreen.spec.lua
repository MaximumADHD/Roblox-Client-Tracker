return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local EditorScreen = require(script.Parent.EditorScreen)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(EditorScreen, {
			GoToNext = function() end,
			GoToPrevious = function() end,
		}))
	end)

	it("should render correctly", function ()
		runComponentTest(
			Roact.createElement(EditorScreen, {
				GoToNext = function() end,
				GoToPrevious = function() end,
			}),
			function(container)
				local frame = container:FindFirstChildOfClass("Frame")
				local mainFrame = frame.MainFrame
				local scroller = mainFrame.Scroller
				local previewViewportFrameContainer = frame.PreviewViewportFrameContainer
				local generateContainer = scroller.GenerateContainer
				local generateScreen = generateContainer.GenerateScreen
				local previewFrame = scroller.PreviewFrame

				expect(frame).to.be.ok()
				expect(mainFrame).to.be.ok()
				expect(scroller).to.be.ok()
				expect(previewViewportFrameContainer).to.be.ok()
				expect(generateContainer).to.be.ok()
				expect(generateScreen).to.be.ok()
				expect(previewFrame).to.be.ok()
			end
		)
	end)
end