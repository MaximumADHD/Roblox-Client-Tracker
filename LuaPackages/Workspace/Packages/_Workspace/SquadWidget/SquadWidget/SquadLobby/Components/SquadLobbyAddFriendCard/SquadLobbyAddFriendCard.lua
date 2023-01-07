local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)

local React = dependencies.React
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local AppStyle = dependencies.AppStyle
local useLocalization = dependencies.Hooks.useLocalization
local useStyle = UIBlox.Core.Style.useStyle
local Constants = require(SquadWidget.SquadLobby.Common.Constants)

type Props = {
	-- Layout order of add friend card
	layoutOrder: number,
}

-- Generic add friend card
local SquadLobbyAddFriendCard = function(props: Props)
	local style = useStyle()
	local theme = style.Theme
	local localizedStrings = useLocalization({
		addFriendText = "Feature.Squads.Label.AddFriend",
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = theme.BackgroundDefault.Color,
		LayoutOrder = props.layoutOrder,
	}, {
		layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 8),
		}),
		AddFriendIconContainer = Roact.createElement("Frame", {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(Constants.AVATAR_SIZE, Constants.AVATAR_SIZE),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement("TextButton", {
				Text = "+",
				TextSize = 36,
				Size = UDim2.fromOffset(Constants.AVATAR_SIZE, Constants.AVATAR_SIZE),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				TextColor3 = AppStyle.LightTheme.TextEmphasis.Color,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
		}),
		AddFriendLabel = Roact.createElement("TextLabel", {
			LayoutOrder = 2,
			Text = localizedStrings.addFriendText,
			TextColor3 = AppStyle.LightTheme.BackgroundDefault.Color,
			Font = style.Font.Footer.Font,
		}),
	})
end

return SquadLobbyAddFriendCard
