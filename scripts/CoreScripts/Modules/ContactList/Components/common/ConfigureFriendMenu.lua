local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local BaseMenu = UIBlox.App.Menu.BaseMenu
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle

local function ConfigureFriendMenu()
	local style = useStyle()
	local theme = style.Theme

	return Roact.createElement(BaseMenu, {
		buttonProps = {
			{
				icon = Images["icons/actions/block"],
				text = "Block", -- TODO(IRIS-864): Localization.
				onActivated = function() end,
			},
			{
				icon = Images["icons/actions/friends/friendRemove"],
				text = "Unfriend", -- TODO(IRIS-864): Localization.
				onActivated = function() end,
			},
		},
		background = theme.BackgroundUIDefault,
		width = UDim.new(0, 352),
		position = UDim2.new(0.5, 0, 0.5, 0),
		anchorPoint = Vector2.new(0.5, 0.5),
	})
end

return ConfigureFriendMenu
