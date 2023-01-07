--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local IconButton = UIBlox.App.Button.IconButton
local withStyle = UIBlox.Style.withStyle
local validateImage = UIBlox.Core.ImageSet.Validator.validateImage
local ContactImporterWarningTooltip = require(script.Parent.ContactImporterWarningTooltip)
local HEADER_HEIGHT = 48
local HEADER_OFFSET_Y = 24

local getFFlagContactImporterUseNewTooltip = require(FriendsLanding.Flags.getFFlagContactImporterUseNewTooltip)

local AddFriendsSectionHeaderFrame = Roact.PureComponent:extend("AddFriendsSectionHeaderFrame")

AddFriendsSectionHeaderFrame.validateProps = t.strictInterface({
	title = t.string,
	icon = validateImage,
	iconVisible = t.boolean,
	onIconActivated = t.optional(t.callback),
	layoutOrder = t.optional(t.integer),
})

AddFriendsSectionHeaderFrame.defaultProps = {
	layoutOrder = 1,
}

function AddFriendsSectionHeaderFrame:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			-- This needs to come forward so the tooltips on the headerbar come in front of friends tiles.
			ZIndex = 2,
			Position = UDim2.new(0, HEADER_OFFSET_Y, 0, 0),
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			LayoutOrder = self.props.layoutOrder,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BorderSizePixel = 0,
		}, {
			HeaderLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = style.Font.Header1.Font,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0.8, 0, 1, 0),
				Text = self.props.title,
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextSize = style.Font.BaseSize * style.Font.Header1.RelativeSize,
				TextTransparency = style.Theme.TextEmphasis.Transparency,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
			HeaderImageButton = self.props.iconVisible and Roact.createElement(IconButton, {
				size = UDim2.fromOffset(36, 36),
				position = UDim2.new(1, 0, 0, 6),
				anchorPoint = Vector2.new(1, 0),
				icon = self.props.icon,
				iconTransparency = style.Theme.IconEmphasis.Transparency,
				iconColor3 = style.Theme.IconEmphasis.Color,
				onActivated = self.props.onIconActivated,
			}) or nil,
			ContactImporterWarningTooltip = if getFFlagContactImporterUseNewTooltip()
				then nil
				else Roact.createElement(ContactImporterWarningTooltip),
		})
	end)
end

return AddFriendsSectionHeaderFrame
