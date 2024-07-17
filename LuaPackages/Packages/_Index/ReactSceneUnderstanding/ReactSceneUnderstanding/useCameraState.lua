local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local enums = require(Root.enums)
local useCurrentCamera = require(Root.useCurrentCamera)

local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef
local useState = React.useState

local SECONDS_BEFORE_IDLE = 0.2

type CameraState = enums.CameraState

local function useCameraState(cameraOverrride: Camera?): CameraState
	local currentCamera = useCurrentCamera()
	local cameraState, setCameraState = useState(enums.CameraState.Idle)
	local thread = useRef(nil :: thread?)

	local camera = if cameraOverrride then cameraOverrride else currentCamera

	local onCameraMoved = useCallback(function()
		setCameraState(function(prev)
			return if prev ~= enums.CameraState.Moving then enums.CameraState.Moving else prev
		end)

		if thread.current then
			task.cancel(thread.current)
		end

		thread.current = task.delay(SECONDS_BEFORE_IDLE, function()
			setCameraState(enums.CameraState.Idle)
		end)
	end, {})

	useEffect(function()
		local conn = camera:GetPropertyChangedSignal("CFrame"):Connect(onCameraMoved)

		return function()
			conn:Disconnect()
		end
	end, { camera })

	return cameraState
end

return useCameraState
