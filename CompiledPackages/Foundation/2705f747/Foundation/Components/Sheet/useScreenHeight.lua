local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local useOverlay = require(Foundation.Providers.Overlay.useOverlay)

local function useScreenHeight()
	local overlay = useOverlay()
	local height, setHeight = React.useState(overlay and overlay.AbsoluteSize.Y or 0)

	React.useLayoutEffect(function()
		local connection

		if overlay then
			setHeight(overlay.AbsoluteSize.Y)
			connection = overlay:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setHeight(overlay.AbsoluteSize.Y)
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { overlay })

	return height
end

return useScreenHeight
