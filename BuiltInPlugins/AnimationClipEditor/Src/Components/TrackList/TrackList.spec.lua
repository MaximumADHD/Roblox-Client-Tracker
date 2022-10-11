return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local Constants = require(Plugin.Src.Util.Constants)

	local TrackList = require(script.Parent.TrackList)

	local testTracks = {
		{
			Instance = "Root",
			Name = "Track1",
			Type = Constants.TRACK_TYPES.CFrame,
			Depth = 1,
			Expanded = false,
		},
		{
			Instance = "Root",
			Name = "Track2",
			Type = Constants.TRACK_TYPES.CFrame,
			Depth = 2,
			Expanded = false,
		},
		{
			Instance = "Root",
			Name = "Track3",
			Type = Constants.TRACK_TYPES.CFrame,
			Depth = 3,
			Expanded = false,
		},
	}

	local function createTestTrackList(topIndex, size)
		return Roact.createElement(MockWrapper, {}, {
			TrackList = Roact.createElement(TrackList, {
				Size = size or UDim2.new(0, 400, 0, 400),
				TopTrackIndex = topIndex or 1,
				Tracks = testTracks,
				RootName = "Root",
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTrackList()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackList(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Canvas).to.be.ok()
		-- Have to observe frame's AbsoluteSize for it to update.
		local _ = frame.Canvas.AbsoluteSize

		expect(frame.Canvas.Layout).to.be.ok()
		expect(frame.Canvas.SummaryTrack).to.be.ok()
		expect(frame.Canvas.Track_Track1).to.be.ok()
		expect(frame.Canvas.Track_Track2).to.be.ok()
		expect(frame.Canvas.Track_Track3).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should work with a TopTrackIndex other than 1", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackList(2), container)
		local frame = container:FindFirstChildOfClass("Frame")

		-- Have to observe frame's AbsoluteSize for it to update.
		local _ = frame.Canvas.AbsoluteSize

		expect(frame.Canvas.Layout).to.be.ok()
		expect(frame.Canvas.SummaryTrack).to.be.ok()
		expect(frame.Canvas.Track_Track2).to.be.ok()
		expect(frame.Canvas.Track_Track3).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should only display visible tracks", function()
		local container = Instance.new("Folder")
		local size = UDim2.new(0, 400, 0, Constants.TRACK_HEIGHT + Constants.SCROLL_BAR_SIZE + 1)
		local instance = Roact.mount(createTestTrackList(1, size), container)
		local frame = container:FindFirstChildOfClass("Frame")

		-- Have to observe frame's AbsoluteSize for it to update.
		local _ = frame.Canvas.AbsoluteSize

		expect(frame.Canvas.Layout).to.be.ok()
		expect(frame.Canvas.SummaryTrack).to.be.ok()
		expect(frame.Canvas.Track_Track1).to.be.ok()
		expect(frame.Canvas:FindFirstChild("Track_Track2")).never.to.be.ok()
		expect(frame.Canvas:FindFirstChild("Track_Track3")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end
