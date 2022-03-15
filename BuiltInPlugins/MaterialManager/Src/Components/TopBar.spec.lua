return function()
	local Plugin = script.Parent.Parent.Parent
	local _Types = require(Plugin.Src.Types)
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local TopBar = require(script.Parent.TopBar)

	local function createTestElement(props: TopBar.Props?)
		props = props or {
			OpenPrompt = function(type: _Types.MaterialPromptType) end
		}

		return mockContext({
			TopBar = Roact.createElement(TopBar, props)
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
			OpenPrompt = function(type: _Types.MaterialPromptType) end,
			Size = UDim2.fromScale(1, 1),
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
