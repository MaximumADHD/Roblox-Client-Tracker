return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local DopeSheet = require(script.Parent.DopeSheet)

	local sampleTracks = {
		{
			Name = "Track1",
			Instance = "Root",
			Keyframes = { 1 },
			Data = {
				[1] = { EasingStyle = Enum.PoseEasingStyle.Linear },
			},
		},
		{
			Name = "Track2",
			Instance = "Root",
			Keyframes = { 1 },
			Data = {
				[1] = { EasingStyle = Enum.PoseEasingStyle.Linear },
			},
		},
		{
			Name = "Track3",
			Instance = "Root",
			Keyframes = { 1 },
			Data = {
				[1] = { EasingStyle = Enum.PoseEasingStyle.Linear },
			},
		},
		{
			Name = "Track4",
			Instance = "Root",
			Keyframes = { 1 },
			Data = {
				[1] = { EasingStyle = Enum.PoseEasingStyle.Linear },
			},
		},
		{
			Name = "Track5",
			Instance = "Root",
			Keyframes = { 1 },
			Data = {
				[1] = { EasingStyle = Enum.PoseEasingStyle.Linear },
			},
		},
		{
			Name = "Track6",
			Instance = "Root",
			Keyframes = { 1 },
			Data = {
				[1] = { EasingStyle = Enum.PoseEasingStyle.Linear },
			},
		},
	}

	local function createTestSheet(topTrackIndex, tracks)
		return Roact.createElement(MockWrapper, {}, {
			Track = Roact.createElement(DopeSheet, {
				StartTick = 1,
				EndTick = 24,
				SelectedKeyframes = {},
				NamedKeyframes = {},
				TopTrackIndex = topTrackIndex,
				Tracks = tracks,
				TrackHeight = 20,
				SummaryTrackHeight = 30,
				LayoutOrder = 0,
				ZIndex = 1,
				Position = UDim2.new(),
				Size = UDim2.new(0, 1000, 0, 60),
				ParentSize = Vector2.new(1000, 60),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSheet(1, sampleTracks)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSheet(1, {}), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Layout).to.be.ok()
		expect(frame.SummaryTrack).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should only render tracks that fit", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSheet(1, sampleTracks), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.SummaryTrack).to.be.ok()
		expect(frame["Track_Track1"]).to.be.ok()
		expect(frame["Track_Track2"]).to.be.ok()

		expect(frame:FindFirstChild("Track_Track3")).never.to.be.ok()
		expect(frame:FindFirstChild("Track_Track4")).never.to.be.ok()
		expect(frame:FindFirstChild("Track_Track5")).never.to.be.ok()
		expect(frame:FindFirstChild("Track_Track6")).never.to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render correctly when topTrackIndex is not 1", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSheet(3, sampleTracks), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.SummaryTrack).to.be.ok()
		expect(frame["Track_Track3"]).to.be.ok()
		expect(frame["Track_Track4"]).to.be.ok()

		expect(frame:FindFirstChild("Track_Track1")).never.to.be.ok()
		expect(frame:FindFirstChild("Track_Track2")).never.to.be.ok()
		expect(frame:FindFirstChild("Track_Track5")).never.to.be.ok()
		expect(frame:FindFirstChild("Track_Track6")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end
