local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local getHardwareSafeAreaInsets = require(script.Parent.getHardwareSafeAreaInsets)

local function useHardwareInsets(overlay: GuiBase2d?)
	local insets, setInsets = React.useState(getHardwareSafeAreaInsets)

	React.useEffect(function()
		local connection

		if overlay then
			connection = overlay:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				setInsets(function(prev)
					local newInsets = getHardwareSafeAreaInsets()
					if
						newInsets.bottom ~= prev.bottom
						or newInsets.top ~= prev.top
						or newInsets.left ~= prev.left
						or newInsets.right ~= prev.right
					then
						return newInsets
					else
						return prev
					end
				end)
			end)
		end

		return function()
			if connection then
				connection:Disconnect()
			end
		end
	end, { overlay })

	return insets
end

return useHardwareInsets
