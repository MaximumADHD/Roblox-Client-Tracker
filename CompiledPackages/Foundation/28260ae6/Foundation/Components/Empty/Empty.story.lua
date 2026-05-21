local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Empty = require(Foundation.Components.Empty)

local function Story(props)
	local controls = props.controls

	return React.createElement(Empty, {
		icon = {
			name = controls.iconName,
			size = controls.iconSize,
		},
		button = if controls.showButton
			then {
				onActivated = function()
					return
				end,
			}
			else nil,
	})
end

return {
	summary = "Empty component for displaying emptys",
	stories = {
		{
			name = "Default",
			story = Story :: any,
		},
		{
			name = "With Button",
			story = function()
				return React.createElement(Empty, {
					icon = {
						name = "rbxasset://textures/ui/LuaChat/icons/ic-friends.png",
						size = IconSize.XLarge,
					},
					text = "To Party with friends, turn on Party in your privacy settings.",
					button = {
						text = "Privacy Settings",
						icon = "icons/navigation/externallink_medium",
						onActivated = function() end,
					},
				})
			end,
		},
	},
	controls = {
		showButton = false,
		iconName = {
			"icons/status/oof_xlarge",
			"icons/status/noconnection_large",
		},
		iconSize = {
			IconSize.XLarge,
			IconSize.Large,
		} :: { IconSize },
	},
}
