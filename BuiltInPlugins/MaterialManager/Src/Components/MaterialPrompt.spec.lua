return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialPrompt = require(script.Parent.MaterialPrompt)

	local function createTestElement(props: MaterialPrompt.Props?)
		props = props or {
			PromptClosed = function() end
		}

		return mockContext({
			MaterialPrompt = Roact.createElement(MaterialPrompt, props)
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
			PromptClosed = function() end,
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with colorMap", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			PromptClosed = function() end,
			name = "Default Variant",
			baseMaterial = Enum.Material.Plastic,
			colorMap = {
				assetId = "rbxassetid://8706345277",
			},
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
