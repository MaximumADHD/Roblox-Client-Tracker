return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local AdditionalPropertiesSettings = require(script.Parent.AdditionalPropertiesSettings)

	local function createTestElement(props: AdditionalPropertiesSettings.Props?)
		props = props or {
			setStudsPerTileError = function() end,
		}

		return mockContext({
			AdditionalPropertiesSettings = Roact.createElement(AdditionalPropertiesSettings, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			LayoutOrder = 1,
			setStudsPerTileError = function() end,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
