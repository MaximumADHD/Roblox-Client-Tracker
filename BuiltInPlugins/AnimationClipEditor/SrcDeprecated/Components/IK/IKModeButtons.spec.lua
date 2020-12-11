return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)
	local Constants = require(Plugin.SrcDeprecated.Util.Constants)

	local IKModeButtons = require(script.Parent.IKModeButtons)

	local function createTestIKModeButtons()
		return Roact.createElement(MockWrapper, {}, {
			IKModeButtons = Roact.createElement(IKModeButtons, {
				IKMode = Constants.IK_MODE.FullBody,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestIKModeButtons()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestIKModeButtons()

		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		expect(frame.IKModeLabel).to.be.ok()
		expect(frame.RadioButtonsFrame).to.be.ok()
		expect(frame.RadioButtonsFrame.RadioButtons).to.be.ok()

		Roact.unmount(instance)
	end)
end
