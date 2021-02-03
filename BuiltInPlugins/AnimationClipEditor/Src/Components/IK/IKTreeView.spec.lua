return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local IKTreeView = require(script.Parent.IKTreeView)

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

	local function createTestIKTreeView()
		return Roact.createElement(MockWrapper, {}, {
			IKTreeView = Roact.createElement(IKTreeView, {
				RootInstance = buildTestRig(),
				PinnedParts = {},
				Chain = {},
				TreeArray = {},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestIKTreeView()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestIKTreeView()

		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		expect(frame.TreeView).to.be.ok()
		expect(#frame.TreeView:GetChildren()).to.equal(2)

		Roact.unmount(instance)
	end)
end
