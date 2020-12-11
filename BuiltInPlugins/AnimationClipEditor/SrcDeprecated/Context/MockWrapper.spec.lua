return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local UILibrary = require(Plugin.UILibrary)

	local Theme = require(Plugin.SrcDeprecated.Context.Theme)
	local ThemeConsumer = Theme.Consumer
	local Localizing = UILibrary.Localizing
	local LocalizationConsumer = Localizing.Consumer
	local UILibraryProvider = require(Plugin.SrcDeprecated.Context.UILibraryProvider)
	local PluginContext = require(Plugin.SrcDeprecated.Context.Plugin)

	local getPlugin = PluginContext.getPlugin
	local getStore = require(Plugin.RoactRodux.getStore)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local ContextTester = Roact.PureComponent:extend("ContextTester")
	function ContextTester:init(props)
		local item = props.Getter(self)
		local foundItem = Instance.new("BoolValue")
		foundItem.Name = "Found"
		foundItem.Parent = props.Container
		foundItem.Value = item ~= nil
	end
	function ContextTester:render()
	end

	local function createContextTester(container, getter)
		return Roact.createElement(ContextTester, {
			Getter = getter,
			Container = container,
		})
	end

	local function createTestMockWrapper(props, children)
		return Roact.createElement(MockWrapper, props, children)
	end

	it("should create and destroy without errors", function()
		local element = createTestMockWrapper()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should work with a ThemeConsumer", function ()
		local element = createTestMockWrapper({
			Roact.createElement(ThemeConsumer)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should work with a LocalizationConsumer", function ()
		local element = createTestMockWrapper({
			Roact.createElement(LocalizationConsumer, {
				localizedRender = {},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should work with a UILibraryProvider", function ()
		local element = createTestMockWrapper({
			Roact.createElement(UILibraryProvider)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should provide a Plugin", function ()
		local container = Instance.new("Folder")
		local element = createTestMockWrapper({}, {
			PluginTester = createContextTester(container, getPlugin),
		})
		local instance = Roact.mount(element)

		local foundPlugin = container:FindFirstChild("Found")
		expect(foundPlugin.Value).to.equal(true)
		foundPlugin:Destroy()

		Roact.unmount(instance)
	end)

	it("should provide a Rodux store", function ()
		local container = Instance.new("Folder")
		local element = createTestMockWrapper({}, {
			StoreTester = createContextTester(container, getStore),
		})
		local instance = Roact.mount(element)

		local foundStore = container:FindFirstChild("Found")
		expect(foundStore.Value).to.equal(true)
		foundStore:Destroy()

		Roact.unmount(instance)
	end)
end