local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local useOverlay = require(Foundation.Providers.Overlay.useOverlay)

local function useScreenSize()
	local overlay = useOverlay()
	local size, setSize = React.useState(overlay and overlay.AbsoluteSize or Vector2.new(0, 0))

	React.useLayoutEffect(function()
		local connection

		if overlay then
			setSize(overlay.AbsoluteSize)
			connection = overlay:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setSize(overlay.AbsoluteSize)
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { overlay })

	return size
end

return useScreenSize
