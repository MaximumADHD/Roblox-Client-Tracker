local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local VoteBar = Roact.PureComponent:extend("VoteBar")

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")

function VoteBar:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props
			local votingTheme = theme.asset.voting

			local upVotes = props.voting.UpVotes
			local downVotes = props.voting.DownVotes
			local totalVotes = upVotes + downVotes
			local voteRatio = (totalVotes ~= 0) and (upVotes / totalVotes) or 1

			local votesLabel = localization:getLocalizedVoteText(totalVotes)

			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = not FFlagStudioLuaWidgetToolboxV2 and (props.LayoutOrder or 0) or nil,
				Size = FFlagStudioLuaWidgetToolboxV2 and UDim2.new(1, 0, 1, 0)
					or UDim2.new(1, 0, 0, Constants.ASSET_VOTING_HEIGHT),
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
					TextTruncate = Enum.TextTruncate.AtEnd,

					Font = Constants.FONT,
					TextSize = Constants.ASSET_VOTE_COUNT_FONT_SIZE,
				}),
			})
		end)
	end)
end

return VoteBar
