return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Constants = require(Plugin.Src.Util.Constants)
	local RigTestHelper = require(script.Parent:WaitForChild("RigTestHelper"))

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local FaceControlsEditorWindow = require(script.Parent.FaceControlsEditorWindow)

	local function createTestFaceControlsEditorWindow(container, FaceControlsEditorEnabled)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			FaceControlsEditorWindow = Roact.createElement(FaceControlsEditorWindow, {
				RootInstance = RigTestHelper.buildTestRig(),
				FaceControlsEditorEnabled = FaceControlsEditorEnabled,
				ShowFaceControlsEditorPanel = true,
				SetShowFaceControlsEditorPanel = function() end,
				SetFaceControlsEditorEnabled = function() end,
				ToggleFaceControlsEditorEnabled = function() end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestFaceControlsEditorWindow()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render tree", function()
		local container = Instance.new("Folder")

		local element = createTestFaceControlsEditorWindow(container, true)

		local instance = Roact.mount(element, container)

		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()

		Roact.unmount(instance)
	end)
end
