return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local EventMarker = require(script.Parent.EventMarker)

	local function createTestEventMarker(selected)
		return Roact.createElement(MockWrapper, {}, {
			EventMarker = Roact.createElement(EventMarker, {
				Selected = selected,
				ZIndex = 0,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestEventMarker()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestEventMarker(), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()
		expect(frame.Border).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render a border when selected", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestEventMarker(true), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()
		expect(frame.SelectionBorder).to.be.ok()

		Roact.unmount(instance)
	end)
end
