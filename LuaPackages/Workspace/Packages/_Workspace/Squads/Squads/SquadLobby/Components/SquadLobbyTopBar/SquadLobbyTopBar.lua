local Squads = script:FindFirstAncestor("Squads")
local TextService = game:GetService("TextService")

local dependencies = require(Squads.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local withStyle = UIBlox.Style.withStyle
local AlertButton = UIBlox.App.Button.AlertButton
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local PLAYER_ICON_IMAGE = Images["icons/menu/player_small"]
local PLAYER_ICON_SIZE = Vector2.new(16, 16)
local LEAVE_BUTTON_SIZE = Vector2.new(56, 28)
local IN_BETWEEN_BAR_PADDING = 16
local IN_BETWEEN_TEXT_PADDING = 4
local TEXT_SIZE = 16

type Props = {
	-- Title
	title: string,
	-- Number of users
	numUsers: number,
	-- Navigate back callback
	navigateBack: () -> (),
	-- Layout order
	layoutOrder: number?,
}

local SquadLobbyTopBar = function(props: Props)
	local isMounted = React.useRef(false)
	React.useEffect(function()
		isMounted.current = true
		return function()
			isMounted.current = false
		end
	end, {})

	local onLeaveButtonActivated = React.useCallback(function()
		if isMounted then
			-- TODO (COEXP-797): Leave button callback here
			props.navigateBack()
		end
	end, {})

	return withStyle(function(style)
		return withLocalization({
			squadLobbyLeaveText = "Feature.Squads.Action.Leave",
		})(function(localizedStrings)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 28),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = props.layoutOrder,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, IN_BETWEEN_BAR_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				TitleContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, -LEAVE_BUTTON_SIZE.X - IN_BETWEEN_BAR_PADDING, 1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 0,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0, IN_BETWEEN_TEXT_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					TitleText = Roact.createElement("TextLabel", {
						Size = UDim2.new(
							1,
							-TextService:GetTextSize(
									tostring(props.numUsers),
									TEXT_SIZE,
									style.Font.Header2.Font,
									Vector2.new(math.huge, TEXT_SIZE)
								).X
								- PLAYER_ICON_SIZE.X
								- IN_BETWEEN_TEXT_PADDING * 2,
							1,
							0
						),
						BackgroundTransparency = 1,
						Font = style.Font.Header2.Font,
						LayoutOrder = 0,
						Text = props.title,
						TextColor3 = style.Theme.TextEmphasis.Color,
						TextSize = TEXT_SIZE,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
					PlayerIcon = Roact.createElement(ImageSetLabel, {
						Size = UDim2.fromOffset(PLAYER_ICON_SIZE.X, PLAYER_ICON_SIZE.Y),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
						Image = PLAYER_ICON_IMAGE,
						ImageColor3 = style.Theme.TextDefault.Color,
					}),
					UserCount = Roact.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Font = style.Font.Header2.Font,
						LayoutOrder = 2,
						Text = tostring(props.numUsers),
						TextColor3 = style.Theme.TextDefault.Color,
						TextSize = TEXT_SIZE,
					}),
				}),
				LeaveButton = Roact.createElement(AlertButton, {
					size = UDim2.fromOffset(LEAVE_BUTTON_SIZE.X, LEAVE_BUTTON_SIZE.Y),
					fontStyle = style.Font.CaptionHeader,
					layoutOrder = 1,
					onActivated = onLeaveButtonActivated,
					text = localizedStrings.squadLobbyLeaveText,
				}),
			})
		end)
	end)
end

return SquadLobbyTopBar
