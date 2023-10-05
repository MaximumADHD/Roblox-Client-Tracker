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
				text = "Block",
				onActivated = function() end,
			},
			{
				icon = Images["icons/actions/friends/friendRemove"],
				text = "Unfriend",
				onActivated = function() end,
			},
		},
		background = theme.BackgroundUIDefault,
	})
end

return ConfigureFriendMenu
