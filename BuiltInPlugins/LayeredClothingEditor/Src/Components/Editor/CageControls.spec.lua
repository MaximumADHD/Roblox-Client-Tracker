return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local Constants = require(Plugin.Src.Util.Constants)
	local SetToolMode = require(Plugin.Src.Actions.SetToolMode)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local CageControls = require(script.Parent.CageControls)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(CageControls))
	end)

	it("should render correctly", function()
		runComponentTest(Roact.createElement(CageControls), function(container)
			local frame = container:FindFirstChildOfClass("Frame")
			local cageEditingButton = frame.CageEditingButton
			local autoSkinButton = frame.AutoSkinButton
			local optionsDropdownButton = frame.OptionsDropdownButton

			expect(frame).to.be.ok()
			expect(optionsDropdownButton).to.be.ok()
			expect(autoSkinButton).to.be.ok()
			expect(cageEditingButton).to.be.ok() 
		end)
	end)

	it("should render correctly if cage editing enabled", function()
		runComponentTest(Roact.createElement(CageControls), function(container, store)
			store:dispatch(SetToolMode(Constants.TOOL_MODE.Point))
			wait()

			local frame = container:FindFirstChildOfClass("Frame")
			local cageEditingButton = frame.CageEditingButton
			local outerCageButton = frame.OuterCageButton
			local innerCageButton = frame.InnerCageButton
			local falloffSlider = frame.FalloffSlider
			local autoSkinButton = frame.AutoSkinButton
			local optionsDropdownButton = frame.OptionsDropdownButton

			expect(frame).to.be.ok()
			expect(optionsDropdownButton).to.be.ok()
			expect(autoSkinButton).to.be.ok()
			expect(cageEditingButton).to.be.ok()
			expect(outerCageButton).to.be.ok()
			expect(innerCageButton).to.be.ok()
			expect(falloffSlider).to.be.ok()
		end)
	end)
end
