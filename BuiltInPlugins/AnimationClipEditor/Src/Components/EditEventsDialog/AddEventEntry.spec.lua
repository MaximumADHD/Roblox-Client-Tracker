return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local AddEventEntry = require(script.Parent.AddEventEntry)

	local function createTestAddEventEntry()
		return Roact.createElement(MockWrapper, {}, {
			AddEventEntry = Roact.createElement(AddEventEntry, {
				PaddingLeft = UDim.new(),
				PaddingRight = UDim.new(),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAddEventEntry()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestAddEventEntry(), container)
		local button = container:FindFirstChildOfClass("ImageButton")

		expect(button).to.be.ok()
		expect(button.Padding).to.be.ok()
		expect(button.Label).to.be.ok()
		expect(button.AddImage).to.be.ok()

		Roact.unmount(instance)
	end)
end
