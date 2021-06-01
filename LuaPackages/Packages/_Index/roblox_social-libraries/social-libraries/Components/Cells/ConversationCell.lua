local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local getConversationDisplayTitle = require(SocialLibraries.Conversation.getConversationDisplayTitle)
local Roact = dependencies.Roact

local PresenceBubbleCellStyled = require(script.Parent.PresenceBubbleCellStyled)
local TestStyle = require(script:FindFirstAncestor("Components").Style.TestStyle)

local ConversationCell = Roact.PureComponent:extend("ConversationCell")
ConversationCell.defaultProps = {
	boldTitle = true,
	subTitleText = nil,
	secondaryTitleText = nil,
	conversation = {},
	childWidth = 0,
	onActivated = nil,
	onCircleActivated = nil,
	isLoading = false,
	style = TestStyle,
	Size = UDim2.new(1, 0, 1, 0),
}

function ConversationCell:init()
	self.onActivated = function()
		if self.props.onActivated then
			self.props.onActivated(self.props.conversation)
		end
	end
end

function ConversationCell:render()
	local conversation = self.props.conversation

	--trim new lines from titleText and subTitleText
	local titleText = getConversationDisplayTitle(conversation)
	local splitSubTitleText = self.props.subTitleText and self.props.subTitleText:split("\n") or nil
	local subTitleText = splitSubTitleText and splitSubTitleText[1] or ""

	return Roact.createElement(PresenceBubbleCellStyled, {
		boldTitle = self.props.boldTitle,
		style = self.props.style,
		childWidth = self.props.childWidth,
		onActivated = self.onActivated,
		onCircleActivated = self.props.onCircleActivated,
		subTitleText = subTitleText,
		secondaryTitleText = self.props.secondaryTitleText,
		Size = self.props.Size,
		isLoading = self.props.isLoading,

		-- conversation props
		avatarCirclePresenceImage = conversation.presenceImage,
		titleText = titleText,
		thumbnails = conversation.thumbnails,
	}, self.props[Roact.Children])
end

return ConversationCell
