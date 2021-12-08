local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local withTheme = ContextHelper.withTheme

local VoteButton = Roact.PureComponent:extend("VoteButton")

function VoteButton:init(props)
	self.state = {
		isHovered = false,
		voteDownButtonHovered = false
	}

	self.onMouseEntered = function(rbx, x, y)
		self:setState({
			isHovered = true
		})
	end

	self.onMouseLeft = function(rbx, x, y)
		self:setState({
			isHovered = false
		})
	end
end

function VoteButton:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function VoteButton:renderContent(theme)
	local props = self.props
	local state = self.state

	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end
	local hasVoted = props.hasVoted
	local userVotedThisButton = props.userVote

	local isVoteUp = props.isVoteUp

	if not isVoteUp then
		userVotedThisButton = not userVotedThisButton
	end

	local isHovered = state.isHovered
	local onClicked = props.onClicked

	local votingTheme = theme.asset.voting

	local colour = votingTheme.voteThumb
	local rotation = 0
	local size = UDim2.new(1, -2, 1, -2)

	if hasVoted and userVotedThisButton then
		if isVoteUp then
			colour = votingTheme.votedUpThumb
		else
			colour = votingTheme.votedDownThumb
		end
		size = UDim2.new(1, 0, 1, 0)
	end

	if not isVoteUp then
		rotation = 180
	end

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		LayoutOrder = isVoteUp and 1 or 2,
		Size = UDim2.new(0, Constants.THUMB_ICON_WIDTH, 0, Constants.THUMB_ICON_HEIGHT),
		AutoButtonColor = false,

		[Roact.Event.MouseEnter] = self.onMouseEntered,
		[Roact.Event.MouseLeave] = self.onMouseLeft,
		[Roact.Event.MouseButton1Click] = onClicked,
	}, {
		Thumb = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = size,
			Rotation = rotation,

			BackgroundTransparency = 1,

			Image = Images.THUMB,
			ImageColor3 = colour,
			ImageTransparency = (isHovered and 0) or 0.2,
		}),
	})
end

if FFlagToolboxRemoveWithThemes then
	VoteButton = withContext({
		Stylizer = ContextServices.Stylizer,
	})(VoteButton)
end

return VoteButton
