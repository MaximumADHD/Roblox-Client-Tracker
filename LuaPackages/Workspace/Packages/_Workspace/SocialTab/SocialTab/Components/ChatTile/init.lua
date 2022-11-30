local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local Images = UIBlox.App.ImageSet.Images

local ChatTile = Roact.PureComponent:extend("ChatTile")
ChatTile.defaultProps = {
	LayoutOrder = 1,
	unreadConversationCount = nil,
	onActivated = function() end,
	title = "",
}

ChatTile.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.number),
	unreadConversationCount = t.optional(t.number),
	onActivated = t.optional(t.callback),
	title = t.optional(t.string),
})

function ChatTile:render()
	local badgeValue = self.props.unreadConversationCount

	if badgeValue == 0 then
		badgeValue = nil
	end

	return UIBlox.Style.withStyle(function()
		return Roact.createElement(UIBlox.App.Tile.MenuTile, {
			-- Frame Props
			size = UDim2.fromScale(1, 1),
			layoutOrder = self.props.LayoutOrder,

			-- Menu Tile specific props
			badgeValue = badgeValue,
			icon = Images["icons/menu/messages_large"],
			title = self.props.title,
			onActivated = self.props.onActivated,
		})
	end)
end

return ChatTile
