--[[
	Encapsulates the AssetPreviewDetails summary, shows a section for voting count, favorites, scripts, and package update.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local VoteButton = require(Framework.UI.Components.VoteButton)

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local Util = require(Framework.Util)
local formatVoteNumber = Util.formatVoteNumber
local formatLocalDateTime = require(Framework.Util.formatLocalDateTime)
local Immutable = Util.Immutable
local LayoutOrderIterator = Util.LayoutOrderIterator
local prioritize = Util.prioritize

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local HoverArea = require(Framework.UI.Components.HoverArea)
local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local Separator = require(Framework.UI.Components.Separator)
local TextLabel = require(Framework.UI.Components.TextLabel)
local Tooltip = require(Framework.UI.Components.Tooltip)

local withAbsoluteSize = require(Framework.Wrappers.withAbsoluteSize)

local Favorites = require(script.Parent.Favorites)
local Votes = require(script.Parent.Votes)

local ASSET_PREVIEW_COMPONENT_NAME = "AssetPreview"

local AssetPreviewDetails = Roact.PureComponent:extend("AssetPreviewDetails")

export type Props<T> = {
	Favorites: {
		Count: number,
		IsFavorited: boolean,
		OnClick: () -> nil,
	}?,
	HasScripts: boolean,
	IsPackage: boolean?,
	LastUpdatedDate: string?,
	Size: UDim2?,
	Voting: {
		UpVotes: number,
		DownVotes: number,
		CanVote: boolean?,
		UserVote: boolean?,
	},
	OnVoteUp: () -> nil,
	OnVoteDown: () -> nil,
	IsUninstalledPlugin: boolean?,
}

type _Props<T> = Props<T> & {
	AbsoluteSize: Vector2?, -- From withAbsoluteSize
	WrapperProps: any?, -- From withAbsoluteSize
	Stylizer: { [string]: any },
}

function AssetPreviewDetails:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization

	local size = prioritize(props.Size, style.Size)

	local leftWidthScale = style.LeftWidthScale

	local layoutOrderIterator = LayoutOrderIterator.new()

	local formattedUpdatedDate
	local lastUpdatedDate
	if props.LastUpdatedDate then
		formattedUpdatedDate = formatLocalDateTime(props.LastUpdatedDate, "LL", localization:getLocale())
		lastUpdatedDate = localization:getProjectText(
			LOCALIZATION_PROJECT_NAME,
			ASSET_PREVIEW_COMPONENT_NAME,
			"LastUpdatedDate",
			{ date = formattedUpdatedDate }
		)
	end

	local totalVotes = 0
	local hasEnoughRatings = false
	if props.Voting then
		totalVotes = if props.Voting.VoteCount ~= nil then props.Voting.VoteCount else 0
		hasEnoughRatings = formatVoteNumber.hasEnoughRatings(totalVotes)
	end

	local votebarLayout = Enum.FillDirection.Horizontal
	local voteSpacing = style.VoteSpacingHorizontal
	if props.AbsoluteSize.X < style.MinBreakpointWidth then
		votebarLayout = Enum.FillDirection.Vertical
		voteSpacing = style.VoteSpacingVertical
	end

	local canVote = props.Voting and props.Voting.CanVote
	local shouldShowVotingButtonsContainer = canVote and not props.IsUninstalledPlugin

	return Roact.createElement(
		Pane,
		join({
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor = style.BackgroundColor,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = props.LayoutOrder,
			Padding = style.Padding,
			Position = props.Position,
			Size = size,
			Spacing = 10,
			Style = "RoundBox",
		}, props.WrapperProps),
		{
			VoteBar = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
			}, {
				Left = if props.Voting
					then Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = votebarLayout,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.new(leftWidthScale, 0, 0, 0),
						Spacing = voteSpacing,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						Votes = if hasEnoughRatings and props.Voting
							then Roact.createElement(Votes, {
								AutomaticSize = Enum.AutomaticSize.XY,
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								Style = style.Votes,
								Size = UDim2.new(0, 0, 0, 0),
								Voting = props.Voting,
							})
							else nil,

						VoteCount = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Style = style.VoteCount,
							Text = formatVoteNumber.getFormattedVoteNumberAndText(
								totalVotes,
								localization,
								false,
								true
							),
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}),
					})
					else nil,

				Right = if shouldShowVotingButtonsContainer
					then Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Size = UDim2.new(0, 0, 0, 0),
						AnchorPoint = Vector2.new(1, 0),
						Position = UDim2.new(1, 0, 0, 0),
						Spacing = style.AssetHeader.VoteSpacing,
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						VerticalAlignment = Enum.VerticalAlignment.Top,
					}, {
						VoteUp = Roact.createElement(VoteButton, {
							CanVote = canVote,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							OnClick = self.props.OnVoteUp,
							UserVote = props.Voting.UserVote,
							VoteType = VoteButton.VoteType.UpVote,
						}),

						VoteDown = Roact.createElement(VoteButton, {
							CanVote = canVote,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							OnClick = self.props.OnVoteDown,
							UserVote = props.Voting.UserVote,
							VoteType = VoteButton.VoteType.DownVote,
						}),
					})
					else nil,
			}),

			-- this separator should always have the same rule as the section below it.
			VoteSeparator = if props.Favorites
				then Roact.createElement(Separator, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				})
				else nil,

			Favorites = if props.Favorites
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					Left = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = votebarLayout,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.new(leftWidthScale, 0, 0, 0),
						Spacing = voteSpacing,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						FavoriteLabel = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Style = style.InfoRow.TitleText,
							Text = localization:getProjectText(
								LOCALIZATION_PROJECT_NAME,
								ASSET_PREVIEW_COMPONENT_NAME,
								"Favorites"
							),
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}),
					}),

					Right = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						AnchorPoint = Vector2.new(1, 0),
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Position = UDim2.new(1, 0, 0, 0),
						Size = UDim2.new(1 - leftWidthScale, 0, 0, 0),
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						Favorites = Roact.createElement(
							Favorites,
							Immutable.JoinDictionaries({
								AutomaticSize = Enum.AutomaticSize.X,
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								Size = UDim2.new(0, 0, 0, 20),
							}, props.Favorites)
						),
					}),
				})
				else nil,

			Separator = if (props.Voting or props.Favorites) and (props.IsPackage or props.HasScripts)
				then Roact.createElement(Separator, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				})
				else nil,

			PackageContainer = if props.IsPackage
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Spacing = style.InfoRow.ElementPadding,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}, {
					PackageIconContainer = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Padding = {
							Top = 2,
						},
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						PackageIcon = Roact.createElement(Image, {
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Style = style.PackageIcon,
						}),
					}),

					TitleContainer = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Spacing = style.InfoRow.DescriptionSpacing,
					}, {
						UpdateableText = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Style = style.InfoRow.TitleText,
							Text = localization:getProjectText(
								LOCALIZATION_PROJECT_NAME,
								ASSET_PREVIEW_COMPONENT_NAME,
								"Updateable"
							),
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}),

						LastUpdatedText = if props.LastUpdatedDate
							then Roact.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.XY,
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								Style = style.InfoRow.DescriptionText,
								Text = lastUpdatedDate,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTruncate = Enum.TextTruncate.AtEnd,
							})
							else nil,
					}),
				})
				else nil,

			ScriptsContainer = if props.HasScripts
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Spacing = style.InfoRow.ElementPadding,
				}, {
					ScriptIcon = Roact.createElement(Image, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Style = style.ScriptArea.ScriptIcon,
					}),

					ScriptText = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						TextWrapped = false,
						Style = style.InfoRow.TitleText,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Text = localization:getProjectText(
							LOCALIZATION_PROJECT_NAME,
							ASSET_PREVIEW_COMPONENT_NAME,
							"ContainsScripts"
						),
					}),

					ScriptInfoIcon = Roact.createElement(Image, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Style = style.ScriptArea.ScriptInfoIcon,
					}, {
						Tooltip = Roact.createElement(Tooltip, {
							AutomaticSize = Enum.AutomaticSize.XY,
							Text = localization:getProjectText(
								LOCALIZATION_PROJECT_NAME,
								ASSET_PREVIEW_COMPONENT_NAME,
								"HasScriptsTooltip"
							),
						}),

						HoverArea = Roact.createElement(HoverArea, {
							Cursor = "PointingHand",
						}),
					}),
				})
				else nil,
		}
	)
end

AssetPreviewDetails = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AssetPreviewDetails)

return withAbsoluteSize(AssetPreviewDetails)
