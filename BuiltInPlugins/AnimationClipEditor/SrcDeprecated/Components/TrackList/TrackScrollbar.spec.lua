return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local TrackScrollbar = require(script.Parent.TrackScrollbar)

	local function createTestTrackScrollbar(numTracks)
		return Roact.createElement(MockWrapper, {}, {
			TrackScrollbar = Roact.createElement(TrackScrollbar, {
				Size = UDim2.new(0, 20, 0, 500),
				TopTrackIndex = 1,
				NumTracks = numTracks or 4,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTrackScrollbar()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackScrollbar(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.ScrollArea).to.be.ok()
		expect(frame.ScrollArea.ScrollBar).to.be.ok()
		expect(frame.UpButton).to.be.ok()
		expect(frame.DownButton).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should not render a scrollbar if NumTracks is less than 1", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackScrollbar(0), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.ScrollArea:FindFirstChild("ScrollBar")).never.to.be.ok()
		expect(frame:FindFirstChild("UpButton")).never.to.be.ok()
		expect(frame:FindFirstChild("DownButton")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end
