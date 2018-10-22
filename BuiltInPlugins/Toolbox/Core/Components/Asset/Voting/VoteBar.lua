local Plugin = script.Parent.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local withTheme = require(Plugin.Core.Consumers.withTheme)

local function VoteBar(props)
	return withTheme(function(theme)
		local layoutOrder = props.LayoutOrder or 0

		local votingTheme = theme.asset.voting

		local upVotes = props.voting.UpVotes
		local downVotes = props.voting.DownVotes
		local totalVotes = upVotes + downVotes
		local voteRatio = (totalVotes ~= 0) and upVotes / totalVotes or 1

		local votesLabel = ("%d vote%s"):format(totalVotes, totalVotes ~= 1 and "s" or "")

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTING_HEIGHT),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),

			VoteBar = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 0,
				Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTE_BAR_OUTER_HEIGHT),
			}, {
				Background = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = votingTheme.downVotes,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTE_BAR_HEIGHT),
				}, {
					UpVotes = Roact.createElement("Frame", {
						BackgroundColor3 = votingTheme.upVotes,
						BorderSizePixel = 0,
						Size = UDim2.new(voteRatio, 0, 1, 0),
					}),
				}),
			}),

			VoteCount = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, Constants.ASSET_VOTE_COUNT_HEIGHT),
				Text = votesLabel,
				TextColor3 = votingTheme.textColor,

				Font = Constants.FONT,
				TextSize = Constants.ASSET_VOTE_COUNT_FONT_SIZE,
			}),
		})
	end)
end

return VoteBar
