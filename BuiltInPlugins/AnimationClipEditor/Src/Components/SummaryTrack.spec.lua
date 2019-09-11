-- Note: keyframes intentionally overlap in sampleTracks and testPreviewKeyframes.
-- This is so that the test verifies that SummaryTrack doesn't create extraneous
-- keyframe components if more than one track has a keyframe on the same frame.
local sampleTracks = {
	{
		Name = "TestTrack",
		Instance = "Root",
		Keyframes = {1, 2, 5},
		Data = {
			[1] = {EasingStyle = Enum.PoseEasingStyle.Linear},
			[2] = {EasingStyle = Enum.PoseEasingStyle.Linear},
			[5] = {EasingStyle = Enum.PoseEasingStyle.Linear},
		},
	},
	{
		Name = "TestTrack2",
		Instance = "Root",
		Keyframes = {2, 3, 4},
		Data = {
			[2] = {EasingStyle = Enum.PoseEasingStyle.Linear},
			[3] = {EasingStyle = Enum.PoseEasingStyle.Linear},
			[4] = {EasingStyle = Enum.PoseEasingStyle.Linear},
		},
	},
}

local testPreviewKeyframes = {
	Root = {
		TestTrack = {4, 5},
		TestTrack2 = {5, 6, 7},
	},
}

local testPreviewData = {
	Root = {
		TestTrack = {
			{EasingStyle = Enum.PoseEasingStyle.Linear},
			{EasingStyle = Enum.PoseEasingStyle.Linear},
		},
		TestTrack2 = {
			{EasingStyle = Enum.PoseEasingStyle.Linear},
			{EasingStyle = Enum.PoseEasingStyle.Linear},
		},
	},
}

return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local SummaryTrack = require(script.Parent.SummaryTrack)

	local function createTestSummaryTrack(previewKeyframes, showCluster)
		return Roact.createElement(MockWrapper, {}, {
			Track = Roact.createElement(SummaryTrack, {
				Size = UDim2.new(0, 1000, 0, 24),
				Tracks = sampleTracks,
				SelectedKeyframes = {},
				PreviewKeyframes = previewKeyframes,
				PreviewData = testPreviewData,
				NamedKeyframes = {},
				LayoutOrder = 0,
				Width = 1000,
				StartFrame = 0,
				EndFrame = 10,
				DoShade = true,
				ShowCluster = showCluster or false,
				ZIndex = 0,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSummaryTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSummaryTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.KeyframeDisplayArea).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should add a keyframe for every entry in any track", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSummaryTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(#frame.KeyframeDisplayArea:GetChildren()).to.be.equal(5)

		Roact.unmount(instance)
	end)

	it("should render a keyframe cluster if ShowCluster is true", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSummaryTrack(nil, true), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(#frame.KeyframeDisplayArea:GetChildren()).to.be.equal(1)

		Roact.unmount(instance)
	end)

	it("should render preview keyframes", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestSummaryTrack(testPreviewKeyframes), container)
		local frame = container:FindFirstChildOfClass("Frame")

		-- 5 keyframes + 4 preview keyframes
		expect(#frame.KeyframeDisplayArea:GetChildren()).to.be.equal(9)

		Roact.unmount(instance)
	end)
end
