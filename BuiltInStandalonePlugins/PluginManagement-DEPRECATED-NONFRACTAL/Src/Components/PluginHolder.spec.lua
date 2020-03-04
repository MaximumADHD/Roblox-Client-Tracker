return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockManagement = require(Plugin.Src.Components.MockManagement)

	local PluginHolder = require(script.Parent.PluginHolder)

	local function createTestPluginHolder(pluginList)
		return Roact.createElement(MockManagement, {}, {
			PluginHolder = Roact.createElement(PluginHolder, {
				pluginList = pluginList or {},
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestPluginHolder()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestPluginHolder()

		local instance = Roact.mount(element, container)
		local root = container:FindFirstChildOfClass("ScrollingFrame")
		expect(root).to.be.ok()
		expect(root.Layout).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render a plugin", function()
		local container = Instance.new("Folder")
		local element = createTestPluginHolder({
			[0] = {
				latestVersion = 0,
				assetId = 0,
			},
		})

		local instance = Roact.mount(element, container)
		local root = container:FindFirstChildOfClass("ScrollingFrame")
		expect(root).to.be.ok()
		expect(root:FindFirstChild("0_Entry")).to.be.ok()
		expect(root:FindFirstChild("0_Border")).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render separators when containing updated and outdated items", function()
		local container = Instance.new("Folder")
		local element = createTestPluginHolder({
			[0] = {
				latestVersion = 0,
				assetId = 0,
			},
			[1] = {
				latestVersion = 20,
				assetId = 1,
			},
		})

		local instance = Roact.mount(element, container)
		local root = container:FindFirstChildOfClass("ScrollingFrame")
		expect(root).to.be.ok()
		expect(root.UpToDate).to.be.ok()
		expect(root.PendingUpdates).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should sort items alphabetically by name", function()
		local container = Instance.new("Folder")
		local element = createTestPluginHolder({
			[0] = {
				latestVersion = 0,
				assetId = 0,
				name = "abc",
			},
			[1] = {
				latestVersion = 0,
				assetId = 1,
				name = "xyz",
			},
			[2] = {
				latestVersion = 0,
				assetId = 2,
				name = "fgh",
			},
		})

		local instance = Roact.mount(element, container)
		local root = container:FindFirstChildOfClass("ScrollingFrame")
		expect(root).to.be.ok()
		local abc = root:FindFirstChild("0_Entry")
		local fgh = root:FindFirstChild("2_Entry")
		local xyz = root:FindFirstChild("1_Entry")
		expect(abc.LayoutOrder < fgh.LayoutOrder).to.equal(true)
		expect(abc.LayoutOrder < xyz.LayoutOrder).to.equal(true)
		expect(fgh.LayoutOrder < xyz.LayoutOrder).to.equal(true)
		Roact.unmount(instance)
	end)
end
