local Plugin = script.Parent.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local MouseManager = require(Plugin.Core.Util.MouseManager)

local VoteButton = Roact.PureComponent:extend("VoteButton")

function VoteButton:init(props)
	self.state = {
		isHovered = false,
		voteDownButtonHovered = false
	}

	self.onMouseEntered = function(rbx, x, y)
		MouseManager:pushIcon(Images.CURSOR_POINTING_HAND)
		self:setState({
			isHovered = true
		})
	end

	self.onMouseLeft = function(rbx, x, y)
		MouseManager:clearIcons()
		self:setState({
			isHovered = false
		})
	end
end

function VoteButton:render()
	local props = self.props
	local state = self.state

	local hasVoted = props.hasVoted
	local userVotedThisButton = props.userVote

	-- TODO CLIDEVSRVS-1593: Improve handling of isVoteUp
	local isVoteUp = props.isVoteUp

	if not isVoteUp then
		userVotedThisButton = not userVotedThisButton
	end

	local isHovered = state.isHovered
	local onClicked = props.onClicked

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		LayoutOrder = isVoteUp and 1 or 2,
		AutoButtonColor = true,

		Image = (hasVoted and userVotedThisButton) and (isVoteUp and Images.THUMB_UP_GREEN or Images.THUMB_DOWN_RED)
			or (isVoteUp and Images.THUMB_UP_GREY or Images.THUMB_DOWN_GREY),
		ImageTransparency = (isHovered and 0) or 0.2,
		Size = UDim2.new(0, Constants.THUMB_ICON_WIDTH, 0, Constants.THUMB_ICON_HEIGHT),

		[Roact.Event.MouseEnter] = self.onMouseEntered,
		[Roact.Event.MouseLeave] = self.onMouseLeft,
		[Roact.Event.MouseButton1Click] = onClicked,
	})
end

return VoteButton
