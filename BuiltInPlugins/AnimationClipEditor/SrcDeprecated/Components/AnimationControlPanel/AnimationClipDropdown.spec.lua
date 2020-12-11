return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)
	local AnimationClipDropdown = require(script.Parent.AnimationClipDropdown)

	local function createTestDropdownButton()
		return Roact.createElement(MockWrapper, {}, {
			AnimationClipDropdown = Roact.createElement(AnimationClipDropdown, {
				AnimationName = "Test",
				LayoutOrder = 0,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDropdownButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestDropdownButton(), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()
		expect(frame.Padding).to.be.ok()
		expect(frame.AnimationClipLabel).to.be.ok()
		expect(frame.ContextButton).to.be.ok()

		Roact.unmount(instance)
	end)
end
