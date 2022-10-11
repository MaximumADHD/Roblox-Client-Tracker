return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Constants = require(Plugin.Src.Util.Constants)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local IKWindow = require(script.Parent.IKWindow)

	local function buildTestRig()
		local model = Instance.new("Model")
		local root = Instance.new("Part", model)
		root.Name = "HumanoidRootPart"
		local torso = Instance.new("Part", model)
		torso.Name = "UpperTorso"
		local head = Instance.new("Part", model)
		head.Name = "Head"
		local torsoJoint = Instance.new("Motor6D", torso)
		torsoJoint.Part0 = root
		torsoJoint.Part1 = torso
		local headJoint = Instance.new("Motor6D", head)
		headJoint.Part0 = torso
		headJoint.Part1 = head

		local rootToUpperTorsoAttach = Instance.new("Attachment", root)
		rootToUpperTorsoAttach.Name = "RootAttachment"

		local upperTorsoToRootAttach = Instance.new("Attachment", torso)
		upperTorsoToRootAttach.Name = "RootAttachment"

		local upperTorsoToHeadAttach = Instance.new("Attachment", torso)
		upperTorsoToHeadAttach.Name = "NeckAttachment"

		local headToUpperTorsoAttach = Instance.new("Attachment", head)
		headToUpperTorsoAttach.Name = "NeckAttachment"

		local constraint = Instance.new("BallSocketConstraint", model)
		constraint.Enabled = false
		constraint.Attachment0 = upperTorsoToHeadAttach
		constraint.Attachment1 = headToUpperTorsoAttach

		return model
	end

	local function createTestIKWindow(container, ikEnabled)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			IKWindow = Roact.createElement(IKWindow, {
				RootInstance = buildTestRig(),
				PinnedParts = {},
				IKEnabled = ikEnabled,
				ShowTree = true,
				Chain = {},
				IKMode = Constants.IK_MODE.FullBody,
				IsR15 = false,
				SetShowTree = function() end,
				SetIKEnabled = function() end,
				ToggleIKEnabled = function() end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestIKWindow()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render tree", function()
		local container = Instance.new("Folder")

		local element = createTestIKWindow(container, true)

		local instance = Roact.mount(element, container)

		local gui = container:FindFirstChildOfClass("ScreenGui")
		expect(gui).to.be.ok()

		Roact.unmount(instance)
	end)
end
