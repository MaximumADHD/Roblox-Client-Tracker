return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local FloorGrid = require(script.Parent.FloorGrid)

	local function createTestFloorGrid(container, rootInstance)
		return Roact.createElement(MockWrapper, {}, {
			FloorGrid = Roact.createElement(FloorGrid, {
				Container = container,
				RootInstance = rootInstance,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestFloorGrid()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render nothing if RootInstance is not provided", function()
		local container = Instance.new("Folder")
		local element = createTestFloorGrid(container)
		local instance = Roact.mount(element, container)

		local folder = container:FindFirstChildOfClass("Folder")
		expect(folder).never.to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render if RootInstance exists", function()
		local container = Instance.new("Folder")
		local rig = Instance.new("Model")
		local part = Instance.new("Part", rig)
		part.Name = "HumanoidRootPart"
		local element = createTestFloorGrid(container, rig)
		local instance = Roact.mount(element, container)

		local folder = container:FindFirstChildOfClass("Folder")
		expect(folder).to.be.ok()
		expect(#folder:GetChildren()).to.equal(22)

		Roact.unmount(instance)
	end)
end
