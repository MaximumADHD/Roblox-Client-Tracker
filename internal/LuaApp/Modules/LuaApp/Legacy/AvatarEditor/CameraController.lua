local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild('RobloxGui')
local Modules = GuiRoot:FindFirstChild('Modules')
local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)


local function getScreenSize()
	return game.Workspace.CurrentCamera.ViewportSize
end

return function(cameraTweener, cameraCenterScreenPosition)
	local this = {}
	local storeChangedCn
	local fullView = false

	local currentCameraPosition = Vector3.new(7.2618074, 4.74155569, -22.701086)
	local currentCameraFocusPoint = Vector3.new(15.2762003, 3.28499985, -16.8211994)
	local currentCameraFov = 0

	local function tweenCameraIntoPlace(position, focusPoint, targetFOV)
		local screenWidth = getScreenSize().X
		local screenHeight = getScreenSize().Y

		local fy = 0.5 * targetFOV * math.pi / 180.0 -- half vertical field of view (in radians)
		local fx = math.atan( math.tan(fy) * screenWidth / screenHeight ) -- half horizontal field of view (in radians)

		local anglesX = math.atan( math.tan(fx)
			* (cameraCenterScreenPosition.X.Scale + 2.0 * cameraCenterScreenPosition.X.Offset / screenWidth))
		local anglesY = math.atan( math.tan(fy)
			* (cameraCenterScreenPosition.Y.Scale + 2.0 * cameraCenterScreenPosition.Y.Offset / screenHeight))

		local targetCFrame
			= CFrame.new(position)
			* CFrame.new(Vector3.new(), focusPoint-position)
			* CFrame.Angles(anglesY,anglesX,0)

		cameraTweener.tweenCamera(targetCFrame, targetFOV)
	end

	function this.tweenCameraToFullView()
		fullView = true

		local targetCFrame = CFrame.new(
			13.2618074,   4.74155569,  -22.701086,
			-0.94241035,  0.0557777137, -0.329775006,
			 0.000000000, 0.98599577,    0.166770056,
			 0.334458828, 0.157165825,  -0.92921263)

		cameraTweener.tweenCamera(targetCFrame, 70)
	end


	function this.tweenCameraToPageView()
		fullView = false

		tweenCameraIntoPlace(
			currentCameraPosition,
			currentCameraFocusPoint,
			currentCameraFov)
	end


	function this.updateCamera(position, focusPoint, fov)
		currentCameraPosition = position
		currentCameraFocusPoint = focusPoint
		currentCameraFov = fov

		if not fullView then
			tweenCameraIntoPlace(position, focusPoint, fov)
		end
	end

	local function update(newState, oldState)
		if newState.FullView ~= oldState.fullView then
			if newState.FullView == true then
				this.tweenCameraToFullView()
			else
				this.tweenCameraToPageView()
			end
		end
	end

	function this:Focus()
		storeChangedCn = AppState.Store.Changed:Connect(update)
	end

	function this:RemoveFocus()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
	end

	return this
end

