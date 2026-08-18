local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local useScreen = require(Foundation.Providers.Overlay.useScreen)

local function useScreenSize()
	local screen = useScreen()
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
