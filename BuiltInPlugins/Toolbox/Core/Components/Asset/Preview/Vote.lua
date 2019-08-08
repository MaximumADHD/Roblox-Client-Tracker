--[[
	This is the Vote component for AssetPreview component.

	Necessary properties:
	position = UDim2
	size = UDim2
	voting = table, a table contains the voting data
	assetId = num

	Optionlal properties:
	layoutOrder = num
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Images = require(Plugin.Core.Util.Images)
local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local RoundButton = require(Plugin.Core.Components.RoundButton)
local RoundFrame = require(Plugin.Core.Components.RoundFrame)

local withTheme = ContextHelper.withTheme

local getNetwork = ContextGetter.getNetwork

local PostUnvoteRequest = require(Plugin.Core.Networking.Requests.PostUnvoteRequest)
local PostVoteRequest = require(Plugin.Core.Networking.Requests.PostVoteRequest)

local EnableToolboxVoteFix = settings():GetFFlag("EnableToolboxVoteFix")

local Vote = Roact.PureComponent:extend("Vote")

local INLINE_PADDING = 6

local BUTTON_STATUS = {
	default = 0,
	hovered = 1,
}

function Vote:init(props)
	self.state = {
		voteUpStatus = BUTTON_STATUS.default,
		voteDownStatus = BUTTON_STATUS.default,
	}

	local networkInterface = getNetwork(self)
	local assetId = self.props.assetId

	local onVoteRequested = self.props.onVoteRequested
	local onUnvoteRequested = self.props.onUnvoteRequested

	self.onVoteUpButtonActivated = function()
		if EnableToolboxVoteFix then
			local voting = self.props.voting
			if voting.HasVoted and voting.UserVote then
				onUnvoteRequested(networkInterface, assetId)
			else
				onVoteRequested(networkInterface, assetId, true)
			end
		else
			if self.props.voting.UserVote then
				onUnvoteRequested(networkInterface, assetId)
			else
				onVoteRequested(networkInterface, assetId, true)
			end
		end
	end

	self.onVoteDownButtonActivated = function()
		if EnableToolboxVoteFix then
			local voting = self.props.voting
			if voting.HasVoted and (not voting.UserVote) then
				onUnvoteRequested(networkInterface, assetId)
			else
				onVoteRequested(networkInterface, assetId, false)
			end
		else
			if self.props.voting.UserVote then
				onVoteRequested(networkInterface, assetId, false)
			else
				onUnvoteRequested(networkInterface, assetId)
			end
		end
	end

	self.onVoteUpEnter = function()
		self:setState({
			voteUpStatus = BUTTON_STATUS.hovered
		})
	end

	self.onVoteUpLeave = function()
		self:setState({
			voteUpStatus = BUTTON_STATUS.default
		})
	end

	self.onVoteDonwEnter = function()
		self:setState({
			voteDownStatus = BUTTON_STATUS.hovered
		})
	end

	self.onVoteDonwLeave = function()
		self:setState({
			voteDownStatus = BUTTON_STATUS.default
		})
	end
end

function Vote:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local position = props.position or UDim2.new(1, 0, 1, 0)
		local size = props.size or UDim2.new(0, 100, 0, 20)

		local voting = props.voting
		local canVote = voting.CanVote
		local hasVoted = voting.HasVoted
		local userVote = voting.UserVote
		local upVotes = voting.UpVotes or 0
		local downVotes = voting.DownVotes or 0
		local totalVotes = 0
		local upVoteRate = 0

		-- TODO: Confirm the theme for the buttons.
		local voteTheme = theme.assetPreview.vote
		local voteUpBGColor = voteTheme.buttonBGColor
		local voteDownBGColor = voteTheme.buttonBGColor
		local voteUpBGTransparancy = voteTheme.buttonBGTrans
		local voteDownBGTransparancy = voteTheme.buttonBGTrans
		local voteUpStatus = state.voteUpStatus
		local voteDownStatus = state.voteDownStatus
		if not canVote then
			voteUpBGColor = voteTheme.voteDisabledBGColor
			voteDownBGColor = voteTheme.voteDisabledBGColor
		else
			if voteUpStatus == BUTTON_STATUS.hovered then
				voteUpBGTransparancy = voteUpBGTransparancy + 0.3
			end
			if voteDownStatus == BUTTON_STATUS.hovered then
				voteDownBGTransparancy = voteDownBGTransparancy + 0.3
			end

			if hasVoted then
				if userVote then
					voteUpBGColor = voteTheme.voteUpBGColor
				else
					voteDownBGColor = voteTheme.voteDownBGColor
				end
			end

			totalVotes = upVotes + downVotes
			if totalVotes > 0 then
				upVoteRate = (upVotes / totalVotes) * 100
			end
		end

		local layoutOrder = props.layoutOrder

		return Roact.createElement(RoundFrame, {
			Position = position,
			Size = size,

			BackgroundTransparency = voteTheme.backgroundTrans,
			BackgroundColor3 = voteTheme.background,
			BorderColor3 = voteTheme.bgBoderColor,

			LayoutOrder = layoutOrder,
		},{
			VoteButtons = Roact.createElement("Frame", {
				Position = UDim2.new(1, -64, 0, 0),
				Size = UDim2.new(0, 64, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 0),
					PaddingLeft = UDim.new(0, 0),
					PaddingRight = UDim.new(0, INLINE_PADDING),
					PaddingTop = UDim.new(0, 0),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,

					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, INLINE_PADDING),
				}),


				VoteDownButton = Roact.createElement(RoundButton, {
					Active = canVote,
					Size = UDim2.new(0, 28, 0, 28),

					BackgroundTransparency = voteDownBGTransparancy,
					BackgroundColor3 = voteDownBGColor,
					BorderColor3 = voteTheme.voteDownBGBorderColor,

					LayoutOrder = 1,
					AutoButtonColor = false,

					[Roact.Event.Activated] = self.onVoteDownButtonActivated,
					[Roact.Event.MouseEnter] = self.onVoteDonwEnter,
					[Roact.Event.MouseLeave] = self.onVoteDonwLeave,
				}, {
					VoteDownImageLabel = Roact.createElement("ImageLabel", {
						Size = UDim2.new(1, 0, 1, 0),

						Image = Images.VOTE_DOWN,
						BackgroundTransparency = 1,
					})
				}),

				VoteUpButton = Roact.createElement(RoundButton, {
					Active = canVote,

					Size = UDim2.new(0, 28, 0, 28),

					BackgroundTransparency = voteUpBGTransparancy,
					BackgroundColor3 = voteUpBGColor,
					BorderColor3 = voteTheme.voteUpBGBorderColor,

					LayoutOrder = 2,
					AutoButtonColor = false,

					[Roact.Event.Activated] = self.onVoteUpButtonActivated,
					[Roact.Event.MouseEnter] = self.onVoteUpEnter,
					[Roact.Event.MouseLeave] = self.onVoteUpLeave,
				}, {
					VoteUpImageLabel = Roact.createElement("ImageLabel", {
						Size = UDim2.new(1, 0, 1, 0),

						Image = Images.VOTE_UP,
						BackgroundTransparency = 1,
					})
				}),
			}),

			VoteInformations = Roact.createElement("Frame", {
				Position = UDim2.new(0, INLINE_PADDING, 0, 0),
				Size = UDim2.new(1, -64, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 6),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,

					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 8),
				}),

				VoteIcon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, 17, 0, 20),
					BackgroundTransparency = 1,
					Image = Images.THUMB_UP,
				}),

				VoteRatio = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, 28, 1, 0),

					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					Text = ("%d%%"):format(upVoteRate),
					TextSize = Constants.FONT_SIZE_LARGE,
					Font = Constants.FONT,
					TextColor3 = voteTheme.textColor,

					LayoutOrder = 1,
				}),

				TotalVotes = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),

					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					Text = ("%d VOTES"):format(tostring(totalVotes)),
					TextSize = Constants.FONT_SIZE_SMALL,
					Font = Constants.FONT,
					TextColor3 = voteTheme.subTextColor,

					LayoutOrder = 2,
				}),
			}),
		})
	end)
end

local function mapDispatchToProps(dispatch)
	return {
		onVoteRequested = function(networkInterface, assetId, bool)
			dispatch(PostVoteRequest(networkInterface, assetId, bool))
		end,

		onUnvoteRequested = function(networkInterface, assetId)
			dispatch(PostUnvoteRequest(networkInterface, assetId))
		end
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(Vote)