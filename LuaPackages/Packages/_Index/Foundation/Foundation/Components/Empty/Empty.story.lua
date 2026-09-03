local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon

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
		text = if controls.text ~= "" then controls.text else nil,
		button = if controls.showButton
			then {
				text = controls.buttonText,
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
			name = "Playground",
			story = Story :: unknown,
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
						icon = IconName.ArrowUpRightFromSquare,
						onActivated = function() end,
					},
				})
			end,
		},
	},
	controls = {
		text = "To Party with friends, turn on Party in your privacy settings.",
		showButton = false,
		buttonText = "Privacy Settings",
		iconName = {
			IconName.MagnifyingGlass,
			IconName.SignalExclamation,
		},
		iconSize = {
			IconSize.XLarge,
			IconSize.Large,
		} :: { IconSize },
	},
}
