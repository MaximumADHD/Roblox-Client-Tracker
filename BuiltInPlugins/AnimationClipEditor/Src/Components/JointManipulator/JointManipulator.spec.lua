return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local JointManipulator = require(script.Parent.JointManipulator)

	local function createTestManipulator(container, tool)
		local part = Instance.new("Part")
		local jointPart = Instance.new("Part")
		local joint = Instance.new("Motor6D")
		joint.Part0 = part
		joint.Part1 = jointPart
		return Roact.createElement(MockWrapper, {}, {
			Manipulator = Roact.createElement(JointManipulator, {
				CurrentPart = part,
				Joint = joint,
				Tool = tool or Enum.RibbonTool.Select,
				WorldSpace = false,
				Container = container or Instance.new("Folder"),
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestManipulator()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local handlesContainer = Instance.new("Folder")
		local element = createTestManipulator(handlesContainer)
		local instance = Roact.mount(element, container)

		expect(handlesContainer:FindFirstChild("Adornee")).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render arc handles if using the Rotate tool", function()
		local container = Instance.new("Folder")
		local handlesContainer = Instance.new("Folder")
		local element = createTestManipulator(handlesContainer, Enum.RibbonTool.Rotate)
		local instance = Roact.mount(element, container)

		expect(handlesContainer:FindFirstChild("ArcHandles")).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render line handles if using the Move tool", function()
		local container = Instance.new("Folder")
		local handlesContainer = Instance.new("Folder")
		local element = createTestManipulator(handlesContainer, Enum.RibbonTool.Move)
		local instance = Roact.mount(element, container)

		expect(handlesContainer:FindFirstChild("LineHandles")).to.be.ok()
		expect(handlesContainer.LineHandles.LeftHandle).to.be.ok()
		expect(handlesContainer.LineHandles.RightHandle).to.be.ok()
		expect(handlesContainer.LineHandles.TopHandle).to.be.ok()
		expect(handlesContainer.LineHandles.BottomHandle).to.be.ok()
		expect(handlesContainer.LineHandles.FrontHandle).to.be.ok()
		expect(handlesContainer.LineHandles.BackHandle).to.be.ok()
		Roact.unmount(instance)
	end)
end