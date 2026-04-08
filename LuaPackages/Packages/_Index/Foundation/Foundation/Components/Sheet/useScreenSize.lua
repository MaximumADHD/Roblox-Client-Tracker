local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useScreen = require(Foundation.Providers.Overlay.useScreen)

local function useScreenSize()
	local screen = if Flags.FoundationOverlayKeyboardAwarenessHardened then useScreen() else useOverlay()
	local size, setSize = React.useState(screen and screen.AbsoluteSize or Vector2.new(0, 0))

	React.useLayoutEffect(function()
		local connection

		if screen then
			setSize(screen.AbsoluteSize)
			connection = screen:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setSize(screen.AbsoluteSize)
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { screen })

	return size
end

return useScreenSize
