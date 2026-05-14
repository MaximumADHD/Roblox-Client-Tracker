--[[
	Encapsulates the VoteBar summary, shows a count of VoteBar and allows up or down voting.

	Required Props:
		ContextItem Localization: A Localization ContextItem, which is provided via withContext.
		Voting Voting: Table of Voting info.
		number AssetId: Asset ID being voted on.
		callback OnVoteUp: called when the upvote button is clicked.
		callback OnVoteDown: called when the downvote button is clicked.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table Favorites: props to pass to Favorites. Favorites will be hidden if this is not shown.
		number LayoutOrder: LayoutOrder of the component.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local Typecheck = require(Framework.Util.Typecheck)
local prioritize = Util.prioritize
local LayoutOrderIterator = Util.LayoutOrderIterator
local formatVoteNumber = Util.formatVoteNumber

local Container = require(Framework.UI.Components.Container)
local TextLabel = require(Framework.UI.Components.TextLabel)

local VoteButton = require(script.Parent.VoteButton)
local Votes = require(script.Parent.Votes)

local COMPONENT_NAME = "VoteBar"

local VoteBar = Roact.PureComponent:extend(COMPONENT_NAME)
Typecheck.wrap(VoteBar, script)

function VoteBar:init()
	self.onVoteUp = function()
		local props = self.props
		local assetId = props.AssetId
		props.OnVoteUp(assetId, props.Voting)
	end

	self.onVoteDown = function()
		local props = self.props
		local assetId = props.AssetId
		props.OnVoteDown(assetId, props.Voting)
	end
end

function VoteBar:render()
	local props = self.props
	local style = self.props.Stylizer

	local size = prioritize(props.Size, style.Size)

	local layoutOrderIterator = LayoutOrderIterator.new()

	local leftWidthScale = 0.6
	local votesWidth = 65

	local totalVotes = if props.Voting.VoteCount ~= nil then props.Voting.VoteCount else 0

	local hasEnoughRatings = formatVoteNumber.hasEnoughRatings(totalVotes)

	local rightContents = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 5),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		VoteUp = Roact.createElement(VoteButton, {
			CanVote = props.Voting.CanVote,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.onVoteUp,
			UserVote = props.Voting.UserVote,
			VoteType = VoteButton.VoteType.UpVote,
		}),

		VoteDown = Roact.createElement(VoteButton, {
			CanVote = props.Voting.CanVote,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.onVoteDown,
			UserVote = props.Voting.UserVote,
			VoteType = VoteButton.VoteType.DownVote,
		}),
	}

	return Roact.createElement(Container, {
		Background = style.Background,
		BackgroundStyle = style.BackgroundStyle,
		Padding = style.Padding,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = size,
	}, {
		Left = Roact.createElement(Container, {
			Size = UDim2.new(leftWidthScale, 0, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Votes = if not hasEnoughRatings
				then nil
				else Roact.createElement(Votes, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Size = UDim2.new(0, votesWidth, 1, 0),
					Style = style.Votes,
					Voting = props.Voting,
				}),
			VoteCount = Roact.createElement(TextLabel, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = if not hasEnoughRatings then UDim2.new(1, 0, 1, 0) else UDim2.new(1, -votesWidth, 1, 0),
				Style = style.VoteCount,
				Text = formatVoteNumber.getFormattedVoteNumberAndText(totalVotes, self.props.Localization, false, true),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
		}),

		Right = Roact.createElement(Container, {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(1 - leftWidthScale, 0, 1, 0),
		}, rightContents),
	})
end

VoteBar = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(VoteBar)

return VoteBar
