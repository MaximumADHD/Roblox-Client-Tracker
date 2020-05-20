return function()
	local Slider = script.Parent
	local Core = Slider.Parent
	local UIBlox = Core.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local GenericSlider = require(Slider.GenericSlider)

	it("should create and destroy without errors", function()
		local genericSlider = Roact.createElement(GenericSlider, {
			lowerValue = 0,
			min = -10,
			max = 10,
			stepInterval = 1,

			onValueChanged = function() end,

			trackImage = "rbxassetid://3792530835",
			-- Allow bindings for style props
			trackColor = Color3.fromRGB(0, 0, 0),
			trackTransparency = 0,

			trackFillImage = "rbxassetid://3792530835",
			trackFillColor = Color3.fromRGB(0, 0, 0),
			trackFillTransparency = 0,

			knobImage = "rbxassetid://3792530835",
			knobColorLower = Color3.fromRGB(0, 0, 0),
			knobTransparency = 0,

			knobShadowImage = "rbxassetid://3792530835",
			knobShadowTransparencyLower = 0,
		})
		local instance = Roact.mount(genericSlider)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with all props", function()
		local genericSlider = Roact.createElement(GenericSlider, {
			lowerValue = 0,
			upperValue = 8,
			min = -10,
			max = 10,
			stepInterval = 1,
			isDisabled = false,

			onValueChanged = function() end,
			onDragStartLower = function() end,
			onDragEnd = function() end,

			trackImage = "rbxassetid://3792530835",
			-- Allow bindings for style props
			trackColor = Color3.fromRGB(0, 0, 0),
			trackTransparency = 0,
			trackSliceCenter = Rect.new(8, 8, 9, 9),

			trackFillImage = "rbxassetid://3792530835",
			trackFillColor = Color3.fromRGB(0, 0, 0),
			trackFillTransparency = 0,
			trackFillSliceCenter = Rect.new(8, 8, 9, 9),

			knobImage = "rbxassetid://3792530835",
			knobColorLower = Color3.fromRGB(0, 0, 0),
			knobTransparency = 0,

			knobImagePadding = 0,

			knobShadowImage = "rbxassetid://3792530835",
			knobShadowTransparencyLower = 0,

			width = UDim.new(1, 1, 1, 1),
			position = UDim2.new(1, 1, 1, 1),
			anchorPoint = Vector2.new(0.5, 0.5),
			layoutOrder = 0,
		})
		local instance = Roact.mount(genericSlider)
		Roact.unmount(instance)
	end)
end
