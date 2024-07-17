local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)

local useState = React.useState
local useCallback = React.useCallback
local useEffect = React.useEffect

local fallbackCamera = Instance.new("Camera")

local function useCurrentCamera(): Camera
	local camera, setCamera = useState(nil :: Camera?)

	local updateCamera = useCallback(function()
		local newCamera = workspace.CurrentCamera
		if newCamera and newCamera ~= camera then
			setCamera(newCamera)
		end
	end, { camera })

	useEffect(function()
		local currentCameraChanged = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(updateCamera)

		return function()
			currentCameraChanged:Disconnect()
		end
	end, { updateCamera })

	useEffect(updateCamera, {})

	return if camera then camera else fallbackCamera
end

return useCurrentCamera
