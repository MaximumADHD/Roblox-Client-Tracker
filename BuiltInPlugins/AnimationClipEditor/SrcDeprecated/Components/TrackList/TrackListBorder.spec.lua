return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local TrackListBorder = require(script.Parent.TrackListBorder)

	local function createTestTrackListBorder()
		return Roact.createElement(MockWrapper, {}, {
			TrackListBorder = Roact.createElement(TrackListBorder)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTrackListBorder()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackListBorder(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.DragArea).to.be.ok()

		Roact.unmount(instance)
	end)
end
