return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local HierarchyLines = require(script.Parent.HierarchyLines)

	local function createTestHierarchyLines(leafNode, childNode, expanded)
		return Roact.createElement(MockWrapper, {}, {
			HierarchyLines = Roact.createElement(HierarchyLines, {
				IsLeafNode = leafNode,
				IsChildNode = childNode,
				IsExpanded = expanded,
				Indent = 1,
				Height = 100,
				LayoutOrder = 1,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestHierarchyLines(false, false, false)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestHierarchyLines(true, true, false)

		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		expect(frame.Indent).to.be.ok()
		expect(frame.HorizontalLine).to.be.ok()
		expect(frame.LeafNode).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render expand/collapse buttons", function()
		local container = Instance.new("Folder")

		local element = createTestHierarchyLines(false, true, false)

		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame.Toggle).to.be.ok()

		Roact.unmount(instance)
	end)
end
