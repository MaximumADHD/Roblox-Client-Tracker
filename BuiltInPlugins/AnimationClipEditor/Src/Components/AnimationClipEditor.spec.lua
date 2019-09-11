return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local AnimationClipEditor = require(script.Parent.AnimationClipEditor)

	local function createTestEditor()
		return Roact.createElement(MockWrapper, {}, {
			Editor = Roact.createElement(AnimationClipEditor)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestEditor()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestEditor(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.EditorController).to.be.ok()

		Roact.unmount(instance)
	end)
end