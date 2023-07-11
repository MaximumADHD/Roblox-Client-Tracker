local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local ControllerBar = script.Parent
local Navigation = ControllerBar.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Types = require(script.Parent.Types)
local ProgressIcon = require(script.Parent.ProgressIcon)

type RenderSteppedStates = {
	isKeyPressed: boolean,
	isKeyHolding: boolean,
	isAnimationRunning: boolean,
}

type RenderSteppedCallbacks = {
	onKeyHolding: () -> (),
	onAnimationRunning: (number) -> (),
	onComplete: () -> (),
	onReset: () -> (),
}

type RenderSteppedOptions = {
	animationTriggerTime: number,
	animationKeyHoldingTime: number,
	animationCoolDownTime: number,
}

local function useRenderStepped(
	states: RenderSteppedStates,
	callbacks: RenderSteppedCallbacks,
	options: RenderSteppedOptions
)
	local progress = React.useRef(0)
	local keyHoldingTime = React.useRef(0)

	local isAnimationRunning = states.isAnimationRunning
	local isKeyPressed = states.isKeyPressed
	local isKeyHolding = states.isKeyHolding

	local onKeyHolding = callbacks.onKeyHolding
	local onAnimationRunning = callbacks.onAnimationRunning
	local onComplete = callbacks.onComplete
	local onReset = callbacks.onReset

	local animationTriggerTime = options.animationTriggerTime
	local animationKeyHoldingTime = options.animationKeyHoldingTime
	local animationCoolDownTime = options.animationCoolDownTime

	local keyPressedRenderStepped = React.useCallback(function(dt: number)
		keyHoldingTime.current = keyHoldingTime.current :: number + dt
		if keyHoldingTime.current :: number >= animationTriggerTime then
			onKeyHolding()
		end
	end, { onKeyHolding, animationTriggerTime } :: { any })

	local keyHoldingRenderStepped = React.useCallback(function(dt: number)
		progress.current = math.clamp(progress.current :: number + dt / animationKeyHoldingTime, 0, 1)
		onAnimationRunning(progress.current :: number)
		if progress.current :: number >= 1 then
			onComplete()
		end
	end, { onAnimationRunning, animationKeyHoldingTime, onComplete } :: { any })

	local keyReleasedRenderStepped = React.useCallback(function(dt: number)
		progress.current = math.clamp(progress.current :: number - dt / animationCoolDownTime, 0, 1)
		onAnimationRunning(progress.current :: number)
		if progress.current :: number <= 0 then
			onReset()
		end
	end, { onAnimationRunning, animationCoolDownTime, onReset } :: { any })

	React.useEffect(function()
		local connection
		local callback
		if isKeyHolding then
			progress.current = 0 -- start animation from beginning
			callback = keyHoldingRenderStepped
		elseif isKeyPressed then
			callback = keyPressedRenderStepped
		elseif isAnimationRunning then -- key released, play cool down animation
			callback = keyReleasedRenderStepped
		end

		if callback then
			connection = RunService.RenderStepped:Connect(callback)
		end

		if connection then
			return function()
				if isKeyPressed then
					keyHoldingTime.current = 0
				end
				connection:Disconnect()
			end
		end

		return function() end
	end, {
		isKeyPressed,
		isKeyHolding,
		isAnimationRunning,
		keyPressedRenderStepped,
		keyHoldingRenderStepped,
		keyReleasedRenderStepped,
	} :: { any })
end

local function ProgressIconAnimated(props: Types.AnimationProps)
	local isKeyPressed, setKeyPressed = React.useState(false)
	local isKeyHolding, setKeyHolding = React.useState(false)
	local isAnimationRunning, setAnimationRunning = React.useState(false)
	local isComplete, setComplete = React.useState(false)

	local progressBinding, setProgress = React.useBinding(nil :: number?)

	local onKeyHolding = React.useCallback(function()
		setKeyHolding(true)
		setAnimationRunning(true)
	end, {})

	local onAnimationRunning = React.useCallback(function(value)
		setProgress(value)
	end, {})

	local onComplete = React.useCallback(function()
		setKeyPressed(false)
		setKeyHolding(false)
		setAnimationRunning(false)
		setComplete(true)
		if props.onHoldComplete then
			props.onHoldComplete()
		end
	end, { props.onHoldComplete })

	local onReset = React.useCallback(function()
		setAnimationRunning(false)
		setProgress(nil)
	end, {})

	useRenderStepped({
		isKeyPressed = isKeyPressed,
		isKeyHolding = isKeyHolding,
		isAnimationRunning = isAnimationRunning,
	}, {
		onKeyHolding = onKeyHolding,
		onAnimationRunning = onAnimationRunning,
		onComplete = onComplete,
		onReset = onReset,
	}, {
		animationTriggerTime = props.animationTriggerTime :: number,
		animationKeyHoldingTime = props.animationKeyHoldingTime :: number,
		animationCoolDownTime = props.animationCoolDownTime :: number,
	})

	local onUserInput = React.useCallback(function(input)
		if
			input.UserInputType ~= Enum.UserInputType.Keyboard
			and input.UserInputType ~= Enum.UserInputType.Gamepad1
		then
			return
		end

		if input.KeyCode == props.keyCode then
			if input.UserInputState == Enum.UserInputState.Begin then
				setKeyPressed(true)
				setComplete(false)
				if isAnimationRunning then
					setKeyHolding(true)
				else
					setProgress(nil)
				end
			elseif input.UserInputState == Enum.UserInputState.End then
				setKeyPressed(false)
				setKeyHolding(false)
			end
		end
	end, { props.keyCode, isAnimationRunning } :: { any })

	React.useEffect(function()
		if props.progress then
			return function() end
		end

		local inputBeganConnection = UserInputService.InputBegan:Connect(onUserInput)
		local inputEndedConnection = UserInputService.InputEnded:Connect(onUserInput)
		return function()
			inputBeganConnection:Disconnect()
			inputEndedConnection:Disconnect()
		end
	end, { onUserInput, props.progress } :: { any })

	local isHolding = false
	if props.progress or isKeyHolding or isAnimationRunning or isComplete then
		isHolding = true
	end

	return React.createElement(ProgressIcon, {
		progress = props.progress or progressBinding,
		icon = props.icon,
		iconHolding = props.iconHolding,
		isHolding = isHolding,
	})
end

return ProgressIconAnimated
