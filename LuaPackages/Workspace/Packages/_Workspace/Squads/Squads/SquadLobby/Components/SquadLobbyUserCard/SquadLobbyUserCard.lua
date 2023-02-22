local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local React = dependencies.React
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local SocialLibraries = dependencies.SocialLibraries
local useLocalization = dependencies.Hooks.useLocalization
local User = SocialLibraries.User
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local ShimmerPanel = UIBlox.Loading.ShimmerPanel
local Constants = require(Squads.SquadLobby.Common.Constants)
local ModelTypes = require(Squads.SquadLobby.Common.ModelTypes)

local CORNER_RADIUS = UDim.new(1, 0)
local TEXT_SIZE = 10

-- Given a user id and name, display the user's avatar image,
-- name, status, and blocekd state. If user detail is missing
-- or isLoading then show loading state
local SquadLobbyUserCard = function(props: ModelTypes.UserCardProps)
	-- TODO (COEXP-849): Show experience icon that user is in
	local style = useStyle()
	local localizedStrings = useLocalization({
		onlineText = "Feature.Squads.Label.Online",
	})
	if props.isLoading or not props.user then
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 4),
			}),
			AvatarContainer = Roact.createElement(ShimmerPanel, {
				LayoutOrder = 0,
				Size = UDim2.fromOffset(Constants.AVATAR_SIZE, Constants.AVATAR_SIZE),
				cornerRadius = CORNER_RADIUS,
			}),
			Name = Roact.createElement(ShimmerPanel, {
				Size = UDim2.fromOffset(66, TEXT_SIZE),
				LayoutOrder = 1,
				cornerRadius = CORNER_RADIUS,
			}),
			Status = Roact.createElement(ShimmerPanel, {
				Size = UDim2.fromOffset(66, TEXT_SIZE),
				LayoutOrder = 2,
				cornerRadius = CORNER_RADIUS,
			}),
		})
	else
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 4),
			}),
			Avatar = Roact.createElement(ImageSetLabel, {
				Image = User.getUserAvatarImage(props.user.id),
				Size = UDim2.fromOffset(Constants.AVATAR_SIZE, Constants.AVATAR_SIZE),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = 0,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
			}),
			NameContainer = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
				BackgroundTransparency = 1,
			}, {
				NameContainerLayout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 2),
				}),
				BlockedIcon = if props.isBlocked
					then Roact.createElement(ImageSetLabel, {
						LayoutOrder = 0,
						Image = Images[Constants.BLOCKED_ICON_IMAGE],
						Size = UDim2.fromOffset(14, 14),
						BackgroundTransparency = 1,
					})
					else nil,
				Name = Roact.createElement("TextLabel", {
					LayoutOrder = 1,
					Text = props.user.name,
					TextColor3 = style.Theme.TextEmphasis.Color,
					Font = style.Font.Footer.Font,
					TextSize = TEXT_SIZE,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
			StatusContainer = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				BackgroundTransparency = 1,
			}, {
				StatusContainerLayout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 2),
				}),
				OnlineStatusDot = if not props.experienceName
					then Roact.createElement("Frame", {
						LayoutOrder = 0,
						BackgroundColor3 = Color3.fromRGB(0, 180, 109),
						Size = UDim2.fromOffset(8, 8),
					}, {
						UICorner = Roact.createElement("UICorner", {
							CornerRadius = CORNER_RADIUS,
						}),
					})
					else nil,
				Status = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Text = if props.experienceName then props.experienceName else localizedStrings.onlineText,
					TextColor3 = style.Theme.TextDefault.Color,
					Font = style.Font.Footer.Font,
					TextSize = TEXT_SIZE,
				}),
			}),
		})
	end
end

return SquadLobbyUserCard
