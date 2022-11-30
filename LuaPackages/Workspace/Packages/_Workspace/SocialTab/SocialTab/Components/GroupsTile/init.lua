local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local Images = UIBlox.App.ImageSet.Images

local GroupsTile = Roact.PureComponent:extend("GroupsTile")
GroupsTile.defaultProps = {
	LayoutOrder = 0,
	onActivated = function() end,
	title = "",
}

GroupsTile.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.number),
	onActivated = t.optional(t.callback),
	title = t.optional(t.string),
})

function GroupsTile:render()
	return UIBlox.Style.withStyle(function()
		return Roact.createElement(UIBlox.App.Tile.MenuTile, {
			-- Frame Props
			size = UDim2.fromScale(1, 1),
			layoutOrder = self.props.LayoutOrder,

			-- Menu Tile specific props
			icon = Images["icons/menu/groups_large"],
			title = self.props.title,
			onActivated = self.props.onActivated,
		})
	end)
end

return GroupsTile
