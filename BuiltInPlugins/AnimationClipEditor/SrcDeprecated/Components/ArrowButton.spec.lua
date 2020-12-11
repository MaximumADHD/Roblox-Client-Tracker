return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local ArrowButton = require(script.Parent.ArrowButton)

	local function createTestArrowButton(children)
		return Roact.createElement(MockWrapper, {}, {
			ArrowButton = Roact.createElement(ArrowButton),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestArrowButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestArrowButton(), container)
		local button = container:FindFirstChildOfClass("ImageButton")

		expect(button).to.be.ok()
		expect(button.Arrow).to.be.ok()

		Roact.unmount(instance)
	end)
end
