return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local CheckboxSetting = require(script.Parent)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(CheckboxSetting, {
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = 1,
			Title = "Hello",
			Enabled = true,
			Selected = false,
			OnToggle = function() end,
		}, {}))
	end)

	it("should render correctly", function ()
		runComponentTest(
			Roact.createElement(CheckboxSetting, {
				Size = UDim2.new(1, 0, 1, 0),
				LayoutOrder = 1,
				Title = "Hello",
				Enabled = true,
				Selected = false,
				OnToggle = function() end,
			}, {}),
			function(container)
				local frame = container:FindFirstChildOfClass("Frame")
				local label = frame.Label
				local checkboxContainer = frame.CheckboxContainer
				local checkboxContainerLayout = checkboxContainer.Layout
				local checkboxToggle = checkboxContainer.CheckboxToggle

				expect(frame).to.be.ok()
				expect(label).to.be.ok()
				expect(checkboxContainer).to.be.ok()
				expect(checkboxContainerLayout).to.be.ok()
				expect(checkboxToggle).to.be.ok()
			end
		)
	end)
end