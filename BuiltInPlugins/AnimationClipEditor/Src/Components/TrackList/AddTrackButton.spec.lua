return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local AddTrackButton = require(script.Parent.AddTrackButton)

	local function createTestAddTrackButton()
		return Roact.createElement(MockWrapper, {}, {
			AddTrackButton = Roact.createElement(AddTrackButton, {
				Tracks = {},
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAddTrackButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestAddTrackButton(), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
