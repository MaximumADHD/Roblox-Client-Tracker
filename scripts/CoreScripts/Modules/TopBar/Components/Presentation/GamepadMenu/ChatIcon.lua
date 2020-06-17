local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local RoactRodux = require(CorePackages.RoactRodux)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Badge = UIBlox.App.Indicator.Badge

local CHAT_ON = Images["icons/menu/chat_on"]
local CHAT_OFF = Images["icons/menu/chat_off"]

local ChatIcon = Roact.PureComponent:extend("ChatIcon")

ChatIcon.validateProps = t.strictInterface({
	chatVisible = t.boolean,
	unreadMessages = t.integer,
})

function ChatIcon:render()
	return withStyle(function(style)
		local theme = style.Theme

		local chatIcon = CHAT_ON
		if not self.props.chatVisible then
			chatIcon = CHAT_OFF
		end

		return Roact.createElement(ImageSetLabel, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Image = chatIcon,
			ImageColor3 = theme.IconEmphasis.Color,
			ImageTransparency = theme.IconEmphasis.Transparency,
			ZIndex = 2,
		}, {
			Badge = self.props.unreadMessages > 0 and Roact.createElement(Badge, {
				position = UDim2.new(0, 24, 0.5, 0),
				anchorPoint = Vector2.new(0, 0.5),

				hasShadow = false,
				value = self.props.unreadMessages,
			})
		})
	end)
end

local function mapStateToProps(state)
	return {
		chatVisible = state.chat.visible,
		unreadMessages = state.chat.unreadMessages,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(ChatIcon)