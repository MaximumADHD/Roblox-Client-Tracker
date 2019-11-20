return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local IKController = require(script.Parent.IKController)

	local function createTestIKController(rootInstance)
		return Roact.createElement(MockWrapper, {}, {
			IKController = Roact.createElement(IKController, {
				ShowTree = false,
				IKMode = "",
				IKEnabled = true,
				RootInstance = rootInstance,
				PinnedParts = {},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestIKController()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local rootInstance = Instance.new("Model")
		local element = createTestIKController(rootInstance)

		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()

		rootInstance:Destroy()

		Roact.unmount(instance)
	end)
end
