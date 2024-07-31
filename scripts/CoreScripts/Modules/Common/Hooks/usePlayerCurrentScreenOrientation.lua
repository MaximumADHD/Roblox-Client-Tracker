local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local usePlayerGui = require(script.Parent.usePlayerGui)

local function usePlayerCurrentScreenOrientation()
	local playerGui = usePlayerGui()
	local currentScreenOrientation, setCurrentScreenOrientation = React.useState(nil :: Enum.ScreenOrientation?)

	React.useEffect(function()
		local currentScreenOrientationConnection

		if playerGui then
			setCurrentScreenOrientation(playerGui.CurrentScreenOrientation)

			currentScreenOrientationConnection = playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function()
				setCurrentScreenOrientation(playerGui.CurrentScreenOrientation)
			end)
		end

		return function()
			if currentScreenOrientationConnection then
				currentScreenOrientationConnection:Disconnect()
			end
		end
	end, {playerGui})

	return currentScreenOrientation
end

return usePlayerCurrentScreenOrientation
