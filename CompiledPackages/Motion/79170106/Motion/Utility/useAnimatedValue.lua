local Utility = script.Parent
local Motion = Utility.Parent
local Packages = Motion.Parent

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local TimingConfigs = require(Utility.TimingConfigs)
local defaultTimings = TimingConfigs.presets
local TransitionPreset = require(Motion.Enums.TransitionPreset)
local defaultTransition = defaultTimings[TransitionPreset.Default]

local Types = require(Motion.Types)
type TransitionConfig = Types.TransitionConfig

type UDimType = {
	scale: number,
	offset: number,
}

type UDim2Type = {
	xScale: number,
	xOffset: number,
	yScale: number,
	yOffset: number,
}

type Vector2Type = {
	x: number,
	y: number,
}

type Color3Type = {
	r: number,
	g: number,
	b: number,
}

type Color4Type = {
	r: number,
	g: number,
	b: number,
	Transparency: number,
}

type EaseOptions = {
	duration: number,
	easingStyle: Enum.EasingStyle,
}

type OnCompleteRef = (number | { [string]: number }) -> ()

-- Helper function to validate numbers.
local function validateNumber(value: any, defaultValue: number?): number
	if type(value) == "number" then
		return value
	end
	return defaultValue or 0
end

-- Generic function for creating animated values.
-- T is expected to be one of: number, UDim, UDim2, Vector2, Color3, or Color4.
local function useAnimatedValue<T>(initialValue: T): (React.Binding<T>, (target: T, timing: TransitionConfig?) -> ())
	local onCompleteRef = React.useRef(nil) :: { current: OnCompleteRef? }

	local onComplete: OnCompleteRef = React.useCallback(function(...)
		if onCompleteRef.current ~= nil then
			if type(onCompleteRef.current) == "function" then
				onCompleteRef.current(...)
			elseif (onCompleteRef.current :: any)._isMockFunction then
				(onCompleteRef.current :: any)(...)
			end
		end
	end, { onCompleteRef })

	if typeof(initialValue) == "table" and initialValue.Color3 and initialValue.Transparency then
		-- ReactOtter doesn't support nested tables, so we need to make Color3 flat.
		local binding: React.Binding<Color4Type>, setBinding = ReactOtter.useAnimatedBinding({
			r = validateNumber(initialValue.Color3.R),
			g = validateNumber(initialValue.Color3.G),
			b = validateNumber(initialValue.Color3.B),
			Transparency = validateNumber(initialValue.Transparency),
		}, onComplete)

		local bindingMap = binding:map(function(value: Color4Type): Types.Color4
			return {
				Color3 = Color3.new(value.r, value.g, value.b),
				Transparency = value.Transparency,
			}
		end)

		local animator = function(target: T, timing: TransitionConfig?)
			if typeof(target) ~= "table" or not target.Color3 or target.Transparency == nil then
				warn("Expected target to be a table with Color3 and Transparency fields")
				return
			end

			onCompleteRef.current = timing and timing.onComplete or nil

			local easeOptions: EaseOptions? = if timing
				then {
					duration = timing.duration or defaultTransition.duration :: number,
					easingStyle = timing.easingStyle :: Enum.EasingStyle,
				}
				else nil

			setBinding({
				r = ReactOtter.ease(validateNumber(target.Color3.R), easeOptions),
				g = ReactOtter.ease(validateNumber(target.Color3.G), easeOptions),
				b = ReactOtter.ease(validateNumber(target.Color3.B), easeOptions),
				Transparency = ReactOtter.ease(validateNumber(target.Transparency), easeOptions),
			})
		end

		return bindingMap :: any, animator :: any
	end

	-- Handle UDim
	if typeof(initialValue) == "UDim" then
		local uDim: React.Binding<UDimType>, setUDim = ReactOtter.useAnimatedBinding({
			scale = validateNumber((initialValue :: UDim).Scale),
			offset = validateNumber((initialValue :: UDim).Offset),
		}, onComplete)

		local binding = uDim:map(function(value: UDimType): UDim
			return UDim.new(value.scale, value.offset)
		end)

		local animator = function(target: T, timing: TransitionConfig?)
			if not target then
				return
			end

			if typeof(target) ~= "UDim" then
				warn("Expected UDim target but got", typeof(target))
				return
			end

			onCompleteRef.current = timing and timing.onComplete or nil

			local easeOptions: EaseOptions? = if timing
				then {
					duration = timing.duration or defaultTransition.duration :: number,
					easingStyle = timing.easingStyle :: Enum.EasingStyle,
				}
				else nil

			setUDim({
				scale = ReactOtter.ease(validateNumber(target.Scale :: number), easeOptions),
				offset = ReactOtter.ease(validateNumber(target.Offset :: number), easeOptions),
			})
		end

		return binding :: any, animator :: any
	end

	-- Handle UDim2
	if typeof(initialValue) == "UDim2" then
		local uDim2: React.Binding<UDim2Type>, setUDim2 = ReactOtter.useAnimatedBinding({
			xScale = validateNumber((initialValue :: UDim2).X.Scale),
			xOffset = validateNumber((initialValue :: UDim2).X.Offset),
			yScale = validateNumber((initialValue :: UDim2).Y.Scale),
			yOffset = validateNumber((initialValue :: UDim2).Y.Offset),
		}, onComplete)

		local binding = uDim2:map(function(value: UDim2Type): UDim2
			return UDim2.new(value.xScale, value.xOffset, value.yScale, value.yOffset)
		end)

		local animator = function(target: T, timing: TransitionConfig?)
			if not target then
				return
			end
			if typeof(target) ~= "UDim2" then
				warn("Expected UDim2 target but got", typeof(target))
				return
			end

			onCompleteRef.current = timing and timing.onComplete or nil

			local easeOptions: EaseOptions? = if timing
				then {
					duration = timing.duration or defaultTransition.duration :: number,
					easingStyle = timing.easingStyle :: Enum.EasingStyle,
				}
				else nil

			setUDim2({
				xScale = ReactOtter.ease(validateNumber(target.X.Scale :: number), easeOptions),
				xOffset = ReactOtter.ease(validateNumber(target.X.Offset :: number), easeOptions),
				yScale = ReactOtter.ease(validateNumber(target.Y.Scale :: number), easeOptions),
				yOffset = ReactOtter.ease(validateNumber(target.Y.Offset :: number), easeOptions),
			})
		end

		return binding :: any, animator :: any

	-- Handle Vector2
	elseif typeof(initialValue) == "Vector2" then
		local vector2: React.Binding<Vector2Type>, setVector2 = ReactOtter.useAnimatedBinding({
			x = validateNumber((initialValue :: Vector2).X),
			y = validateNumber((initialValue :: Vector2).Y),
		}, onComplete)

		local binding = vector2:map(function(value: Vector2Type): Vector2
			return Vector2.new(value.x, value.y)
		end)

		local animator = function(target: T, timing: TransitionConfig?)
			if not target then
				return
			end

			if typeof(target) ~= "Vector2" then
				warn("Expected Vector2 target but got", typeof(target))
				return
			end

			onCompleteRef.current = timing and timing.onComplete or nil

			local easeOptions: EaseOptions? = if timing
				then {
					duration = timing.duration or defaultTransition.duration :: number,
					easingStyle = timing.easingStyle :: Enum.EasingStyle,
				}
				else nil

			setVector2({
				x = ReactOtter.ease(validateNumber(target.X :: number), easeOptions),
				y = ReactOtter.ease(validateNumber(target.Y :: number), easeOptions),
			})
		end

		return binding :: any, animator :: any

	-- Handle Color3
	elseif typeof(initialValue) == "Color3" then
		local color3: React.Binding<Color3Type>, setColor3 = ReactOtter.useAnimatedBinding({
			r = validateNumber((initialValue :: Color3).R),
			g = validateNumber((initialValue :: Color3).G),
			b = validateNumber((initialValue :: Color3).B),
		}, onComplete)

		local binding = color3:map(function(value: Color3Type): Color3
			return Color3.new(value.r, value.g, value.b)
		end)

		local animator = function(target: T, timing: TransitionConfig?)
			if not target then
				return
			end

			if typeof(target) ~= "Color3" then
				warn("Expected Color3 target but got", typeof(target))
				return
			end

			onCompleteRef.current = timing and timing.onComplete or nil

			local easeOptions: EaseOptions? = if timing
				then {
					duration = timing.duration or defaultTransition.duration :: number,
					easingStyle = timing.easingStyle :: Enum.EasingStyle,
				}
				else nil

			setColor3({
				r = ReactOtter.ease(validateNumber(target.R :: number), easeOptions),
				g = ReactOtter.ease(validateNumber(target.G :: number), easeOptions),
				b = ReactOtter.ease(validateNumber(target.B :: number), easeOptions),
			})
		end
		return binding :: any, animator :: any

	-- Handle Numbers
	elseif typeof(initialValue) == "number" then
		local value: React.Binding<number>, setValue =
			ReactOtter.useAnimatedBinding(validateNumber(initialValue :: number), onComplete)

		local binding = value:map(function(currentValue: number): number
			return currentValue
		end)

		local animator = function(target: T, timing: TransitionConfig?)
			if typeof(target) ~= "number" then
				return
			end

			onCompleteRef.current = timing and timing.onComplete or nil

			local easeOptions: EaseOptions? = if timing
				then {
					duration = timing.duration or defaultTransition.duration :: number,
					easingStyle = timing.easingStyle :: Enum.EasingStyle,
				}
				else nil

			setValue(ReactOtter.ease(target :: number, easeOptions))
		end

		return binding :: any, animator :: any
	else
		warn("Unsupported type for animated value:", typeof(initialValue))
		return React.createBinding(initialValue), function() end
	end
end

return useAnimatedValue
