--[[
	A bar that goes across the bottom of the screen on devices with rounded corners,
    to mask the gap underneath modals when opened, such as peek views.
]]

local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent

local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local RoactUtils = require(Packages.RoactUtils)

local useStyle = UIBlox.Core.Style.useStyle
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

return function()
	local style = useStyle()
	local globalGuiInsetBottom = useSelector(function(state)
		return if state.GlobalGuiInset then state.GlobalGuiInset.bottom else 0
	end)

	return React.createElement("Frame", {
		BackgroundColor3 = style.Theme.BackgroundDefault.Color,
		BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 1, 0),
		Size = UDim2.new(1, 0, 0, globalGuiInsetBottom),
		ZIndex = 3,
	})
end
