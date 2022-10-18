return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Cryo = require(Plugin.Packages.Cryo)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Constants = require(Plugin.Src.Util.Constants)

	local CurveCanvas = require(script.Parent.CurveCanvas)

	local function createTestCurveCanvas(props: CurveCanvas.Props?)
		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(
				CurveCanvas,
				Cryo.Dictionary.join({
					AbsoluteSize = Vector2.new(400, 100),
					ParentSize = Vector2.new(400, 100),
					MinValue = 0,
					MaxValue = 200,
					StartTick = 0,
					EndTick = 800,
					VerticalZoom = 1,
					VerticalScroll = 0,
					Tracks = {},
				}, props or {})
			),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestCurveCanvas()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestCurveCanvas()

		local instance = Roact.mount(element, container)

		local curveCanvas = container:FindFirstChildOfClass("Frame")
		expect(curveCanvas).to.be.ok()
		expect(curveCanvas[1]).to.be.ok() -- XAxis line

		Roact.unmount(instance)
	end)

	it("should not render a empty track", function()
		local container = Instance.new("Folder")

		local element = createTestCurveCanvas({
			Tracks = {
				Keyframes = {},
			},
		})

		local instance = Roact.mount(element, container)

		local curveCanvas = container:FindFirstChildOfClass("Frame")
		expect(curveCanvas).to.be.ok()
		local children = curveCanvas:GetChildren()
		expect(#Cryo.Dictionary.keys(children)).to.equal(1) -- XAxis line

		Roact.unmount(instance)
	end)

	it("should render tracks", function()
		local container = Instance.new("Folder")

		local element = createTestCurveCanvas({
			Playhead = 150,
			Tracks = {
				{
					Path = { "Path", "To", "Nothing" },
					IsCurveTrack = true,
					Instance = "Foo",
					Type = Constants.TRACK_TYPES.Number,
				},
				{
					Path = { "Path", "To", "Numbers" },
					IsCurveTrack = true,
					Instance = "Foo",
					Type = Constants.TRACK_TYPES.Number,
					Keyframes = { 100, 200, 400, 700 },
					Data = {
						[100] = {
							Value = 50,
							InterpolationMode = Enum.KeyInterpolationMode.Constant,
						},
						[200] = {
							Value = 200,
							InterpolationMode = Enum.KeyInterpolationMode.Cubic,
						},
						[400] = {
							Value = 100,
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
						[700] = {
							Value = 50,
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
					},
				},
				{
					Path = { "Path", "To", "Quaternions" },
					IsCurveTrack = true,
					Instance = "Foo",
					Type = Constants.TRACK_TYPES.Quaternion,
					Keyframes = { 100, 200, 400 },
					Data = {
						[100] = {
							Value = CFrame.new(),
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
						[200] = {
							Value = CFrame.fromEulerAnglesXYZ(10, 20, 30),
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
						[400] = {
							Value = CFrame.fromEulerAnglesXYZ(40, 40, 40),
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
					},
				},
				{
					Path = { "Path", "To", "Facs" },
					IsCurveTrack = true,
					Instance = "Foo",
					Type = Constants.TRACK_TYPES.Facs,
					Keyframes = { 100, 200, 400 },
					Data = {
						[100] = {
							Value = 0,
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
						[200] = {
							Value = 1,
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
						[400] = {
							Value = 0.5,
							InterpolationMode = Enum.KeyInterpolationMode.Linear,
						},
					},
				},
			},
			SelectedKeyframes = {
				Foo = {
					Path = {
						To = {
							Numbers = { Selection = { [200] = true } },
							Quaternions = { Selection = { [200] = true } },
						},
					},
				},
			},
		})

		local instance = Roact.mount(element, container)

		local curveCanvas = container:FindFirstChildOfClass("Frame")
		expect(curveCanvas).to.be.ok()

		Roact.unmount(instance)
	end)
end
