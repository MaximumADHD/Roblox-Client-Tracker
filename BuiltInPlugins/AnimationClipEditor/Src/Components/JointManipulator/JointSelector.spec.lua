return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local JointSelector = require(script.Parent.JointSelector)

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
		return model
	end

	local function createTestSelector(container)
		return Roact.createElement(MockWrapper, {}, {
			Selector = Roact.createElement(JointSelector, {
				RootInstance = buildTestRig(),
				Container = Instance.new("Folder"),
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSelector()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end