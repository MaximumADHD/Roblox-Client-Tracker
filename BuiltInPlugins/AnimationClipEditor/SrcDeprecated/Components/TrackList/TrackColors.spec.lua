return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)
	local Constants = require(Plugin.SrcDeprecated.Util.Constants)

	local TrackColors = require(script.Parent.TrackColors)

	local testTracks = {
		{
			Type = Constants.TRACK_TYPES.CFrame,
			Expanded = false,
		},
		{
			Type = Constants.TRACK_TYPES.CFrame,
			Expanded = false,
		},
		{
			Type = Constants.TRACK_TYPES.CFrame,
			Expanded = true,
		},
	}

	local function createTestTrackColors(topIndex, maxHeight)
		return Roact.createElement(MockWrapper, {}, {
			TrackColors = Roact.createElement(TrackColors, {
				MaxHeight = maxHeight or 1000,
				TopTrackIndex = topIndex or 0,
				Tracks = testTracks,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTrackColors()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackColors(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.Layout).to.be.ok()
		expect(frame[1]).to.be.ok()
		expect(frame[2]).to.be.ok()
		expect(frame[3]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should work with a TopTrackIndex other than 0", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackColors(2), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame[1]).to.be.ok()
		expect(frame[2]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should only display visible tracks", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrackColors(0, 1), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame[1]).to.be.ok()
		expect(frame:FindFirstChild("2")).never.to.be.ok()
		expect(frame:FindFirstChild("3")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end
