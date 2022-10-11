local sampleTrack = {
	Name = "TestTrack",
	Instance = "Root",
	Keyframes = { 1, 2, 5, 6, 10, 17, 21, 22, 26, 27, 34, 43, 50, 52, 58, 59, 60, 65, 70, 74, 76, 77, 81 },
}

local sampleData = {}
for _, tck in ipairs(sampleTrack.Keyframes) do
	sampleData[tck] = {
		EasingStyle = Enum.PoseEasingStyle.Linear,
	}
end
sampleTrack.Data = sampleData

local testSelectedKeyframes = {
	Root = {
		TestTrack = { 1, 2, 5, 6 },
	},
}

local testPreviewKeyframes = {
	Root = {
		TestTrack = { 1, 2, 5, 6 },
	},
}

local testPreviewData = {
	Root = {
		TestTrack = {
			{ EasingStyle = Enum.EasingStyle.Linear },
			{ EasingStyle = Enum.EasingStyle.Linear },
			{ EasingStyle = Enum.EasingStyle.Linear },
			{ EasingStyle = Enum.EasingStyle.Linear },
		},
	},
}

return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local DopeSheetTrack = require(script.Parent.DopeSheetTrack)

	local function createTestTrack(selectedKeyframes, previewKeyframes, showCluster)
		return Roact.createElement(MockWrapper, {}, {
			Track = Roact.createElement(DopeSheetTrack, {
				Size = UDim2.new(0, 1000, 0, 24),
				Track = sampleTrack,
				SelectedKeyframes = selectedKeyframes or {},
				LayoutOrder = 0,
				Width = 1000,
				StartTick = 0,
				EndTick = 26,
				DoShade = false,
				ShowCluster = showCluster or false,
				ZIndex = 0,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTrack()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.KeyframeDisplayArea).to.be.ok()
		for _, child in ipairs(frame.KeyframeDisplayArea:GetChildren()) do
			expect(child).to.be.ok()
		end

		Roact.unmount(instance)
	end)

	it("should have proper number of keyframes", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrack(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(#frame.KeyframeDisplayArea:GetChildren()).to.be.equal(9)

		Roact.unmount(instance)
	end)

	it("should render a keyframe cluster if ShowCluster is true", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestTrack(nil, nil, true), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(#frame.KeyframeDisplayArea:GetChildren()).to.be.equal(1)

		Roact.unmount(instance)
	end)
end
