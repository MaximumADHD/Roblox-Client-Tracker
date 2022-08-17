return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local Constants = require(Plugin.Src.Util.Constants)
	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local ScaleControls = require(script.Parent.ScaleControls)

	local selectedKeyframes = {
		Root = {
			TestTrack1 = {
				Selection = {
					[18] = true,
					[27] = true,
				},
			},
			TestTrack2 = {
				Selection = {
					[24] = true,
				},
			},
		}
	}

	local tracks = {
		{
			Instance = "Root",
			Name = "TestTrack1",
			Keyframes = {1, 2, 3, 18, 27},
			Expanded = false,
			Type = Constants.TRACK_TYPES.CFrame,
		},
		{
			Instance = "Root",
			Name = "TestTrack2",
			Keyframes = {2, 7, 8, 10, 24},
			Expanded = false,
			Type = Constants.TRACK_TYPES.CFrame,
		},
	}

	local function createTestAddTrackButton()
		return Roact.createElement(MockWrapper, {}, {
			ScaleControls = Roact.createElement(ScaleControls, {
				SelectedKeyframes = selectedKeyframes,
				StartTick = 0,
				EndTick = 30,
				TopTrackIndex = 1,
				Tracks = tracks,
				Dragging = true,
				ShowAsSeconds = true,
				FrameRate = 30,
				DopeSheetWidth = 500,
				ZIndex = 2,
				ShowSelectionArea = false,
				TrackPadding = Constants.TRACK_PADDING_SMALL,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAddTrackButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestAddTrackButton(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.LeftHandle).to.be.ok()
		expect(frame.RightHandle).to.be.ok()
		expect(frame.LeftTimeTag).to.be.ok()
		expect(frame.RightTimeTag).to.be.ok()

		Roact.unmount(instance)
	end)
end
