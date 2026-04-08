local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

return function()
	local screenSize, setScreenSize = React.useState(Vector2.new(math.huge, math.huge))
	local currentCamera, setCurrentCamera = React.useState(workspace.CurrentCamera)

	React.useEffect(function()
		local cameraConnection = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
			setCurrentCamera(workspace.CurrentCamera)
		end)

		if currentCamera then
			setScreenSize(currentCamera.ViewportSize)
		end

		return function()
			cameraConnection:Disconnect()
		end
	end, {})

	React.useEffect(function()
		if not currentCamera then
			return
		end

		local viewportSizeConnection = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			if currentCamera then
				setScreenSize(currentCamera.ViewportSize)
			end
		end)

		return function()
			viewportSizeConnection:Disconnect()
		end
	end, { currentCamera })

	return screenSize
end
