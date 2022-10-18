return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Keyframe = require(script.Parent.Keyframe)

	local function createTestKeyframe(
		path,
		color,
		selected,
		leftSlope,
		rightSlope,
		interpolationMode,
		prevInterpolationMode
	)
		interpolationMode = interpolationMode or Enum.KeyInterpolationMode.Linear
		prevInterpolationMode = prevInterpolationMode or interpolationMode

		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(Keyframe, {
				Path = path,
				Color = color,
				InterpolationMode = interpolationMode,
				Position = Vector2.new(50, 50),
				PrevInterpolationMode = prevInterpolationMode,
				LeftSlope = leftSlope,
				RightSlope = rightSlope,
				Selected = selected,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestKeyframe({}, Color3.fromRGB(255, 0, 0))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestKeyframe(
			{ "path", "to", "key" },
			Color3.fromRGB(255, 0, 0),
			true,
			0,
			nil,
			Enum.KeyInterpolationMode.Cubic
		)

		local instance = Roact.mount(element, container)

		local keyframe = container:FindFirstChildOfClass("ImageButton")
		expect(keyframe).to.be.ok()
		expect(keyframe.Tooltip).to.be.ok()

		Roact.unmount(instance)
	end)
end
