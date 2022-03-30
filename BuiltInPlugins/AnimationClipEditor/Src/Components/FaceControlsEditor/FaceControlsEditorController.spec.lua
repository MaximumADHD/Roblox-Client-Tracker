return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local FaceControlsEditorController = require(script.Parent.FaceControlsEditorController)

	local function createTestFaceControlsEditorController(rootInstance)
		return Roact.createElement(MockWrapper, {}, {
			FaceControlsEditorController = Roact.createElement(FaceControlsEditorController, {
				ShowFaceControlsEditorPanel = false,
				FaceControlsEditorEnabled = true,
				RootInstance = rootInstance,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestFaceControlsEditorController()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local rootInstance = Instance.new("Model")
		local element = createTestFaceControlsEditorController(rootInstance)

		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()

		rootInstance:Destroy()

		Roact.unmount(instance)
	end)
end
