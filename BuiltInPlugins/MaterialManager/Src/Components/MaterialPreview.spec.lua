return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialPreview = require(script.Parent.MaterialPreview)

	local function createTestElement(props: MaterialPreview.Props?)
		props = props or {}

		return mockContext({
			MaterialPreview = Roact.createElement(MaterialPreview, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement()
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with only metalness map", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			MetalnessMap = "rbxassetid://8207243574",
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with only normal map", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			NormalMap = "rbxassetid://8706416568",
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with only roughness map", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			RoughnessMap = "rbxassetid://8706417425",
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly when in static mode", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			Static = true,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
