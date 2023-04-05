--[[
	A hook the returns whether the screen this component belongs
	to has RoactNavigation focus.
]]

local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local useNavigation = require(script.Parent.useNavigation)

local function useNavigationFocus()
	local navigation = useNavigation()

	local isFocused, setIsFocused = React.useState(navigation.isFocused())

	React.useEffect(function()
		local willFocusSub = navigation.addListener(RoactNavigation.Events.WillFocus, function()
			setIsFocused(true)
		end)
		local willBlurSub = navigation.addListener(RoactNavigation.Events.WillBlur, function()
			setIsFocused(false)
		end)
		setIsFocused(navigation.isFocused())

		return function()
			willFocusSub.remove()
			willBlurSub.remove()
		end
	end, {})

	return isFocused
end

return useNavigationFocus
