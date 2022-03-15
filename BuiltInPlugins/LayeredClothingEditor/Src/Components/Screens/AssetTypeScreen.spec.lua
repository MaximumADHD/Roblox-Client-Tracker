return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local AssetTypeScreen = require(script.Parent.AssetTypeScreen)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(AssetTypeScreen, {
			GoToNext = function() end,
			GoToPrevious = function() end,
		}))
	end)

	it("should render correctly", function ()
		runComponentTest(
			Roact.createElement(AssetTypeScreen, {
				GoToNext = function() end,
				GoToPrevious = function() end,
			}),
			function(container)
				local frame = container:FindFirstChildOfClass("Frame")
				local screen = frame.Screen
				local mainFrame = screen.MainFrame.Scroller
				local expandablePane = mainFrame.ExpandablePane
				local content = expandablePane.Content

				local prompt = content.Prompt
				local nextBackButtonContainer = content.NextAndBackButtonContainer
				local nextButton = nextBackButtonContainer.NextButton
				local backButton = nextBackButtonContainer.BackButton

				local flowScreencontent = content.Content
				local accessoryTypeList = flowScreencontent.AccessoryTypeList
				local clothingTypeList = flowScreencontent.ClothingTypeList

				expect(frame).to.be.ok()
				expect(mainFrame).to.be.ok()
				expect(expandablePane).to.be.ok()
				expect(screen).to.be.ok()
				expect(content).to.be.ok()
				expect(prompt).to.be.ok()
				expect(nextButton).to.be.ok()
				expect(backButton).to.be.ok()

				expect(flowScreencontent).to.be.ok()
				expect(accessoryTypeList).to.be.ok()
				expect(clothingTypeList).to.be.ok()
			end
		)
	end)
end

