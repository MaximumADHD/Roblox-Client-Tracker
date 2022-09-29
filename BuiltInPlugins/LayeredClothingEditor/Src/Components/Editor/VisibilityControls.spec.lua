return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local VisibilityControls = require(script.Parent.VisibilityControls)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(VisibilityControls))
	end)

	it("should render correctly", function()
		runComponentTest(Roact.createElement(VisibilityControls), function(container)
            local frame = container:FindFirstChildOfClass("Frame")
            local optionsDropdownButton = frame.OptionsDropdownButton
            local editTransparencyView = frame.EditTransparencyView
            local focusMannequinButton = frame.FocusMannequinButton

            expect(frame).to.be.ok()
            expect(optionsDropdownButton).to.be.ok()
            expect(editTransparencyView).to.be.ok()
            expect(focusMannequinButton).to.be.ok() 
        end)
	end)
end
