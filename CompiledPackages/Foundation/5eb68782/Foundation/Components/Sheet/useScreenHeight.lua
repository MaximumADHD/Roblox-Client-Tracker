local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useScreen = require(Foundation.Providers.Overlay.useScreen)

local function useScreenHeight()
	local screen = if Flags.FoundationOverlayKeyboardAwarenessHardened then useScreen() else useOverlay()
	local height, setHeight = React.useState(screen and screen.AbsoluteSize.Y or 0)

	React.useLayoutEffect(function()
		local connection

		if screen then
			setHeight(screen.AbsoluteSize.Y)
			connection = screen:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setHeight(screen.AbsoluteSize.Y)
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { screen })

	return height
end

return useScreenHeight
