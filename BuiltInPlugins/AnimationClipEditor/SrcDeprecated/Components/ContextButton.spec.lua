return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local ContextButton = require(script.Parent.ContextButton)

	local function createTestContextButton()
		return Roact.createElement(MockWrapper, {}, {
			ContextButton = Roact.createElement(ContextButton),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestContextButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestContextButton(), container)
		local button = container:FindFirstChildOfClass("ImageButton")

		expect(button).to.be.ok()

		Roact.unmount(instance)
	end)
end
