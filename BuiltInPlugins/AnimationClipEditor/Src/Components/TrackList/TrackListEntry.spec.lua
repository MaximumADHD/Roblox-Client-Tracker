return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local TrackListEntry = require(script.Parent.TrackListEntry)

	local function createTestTrackListEntry(children)
		return Roact.createElement(MockWrapper, {}, {
			TrackListEntry = Roact.createElement(TrackListEntry, {
				Indent = 0,
				DoShade = false,
				Expanded = false,
				Height = 10,
			}, children),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTrackListEntry()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackListEntry(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render its children", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(
			createTestTrackListEntry({
				ChildFrame = Roact.createElement("Frame"),
			}),
			container
		)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.ChildFrame).to.be.ok()

		Roact.unmount(instance)
	end)
end
