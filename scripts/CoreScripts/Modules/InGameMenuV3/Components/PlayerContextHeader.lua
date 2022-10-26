local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Style.withStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local LoadableImage = UIBlox.App.Loading.LoadableImage
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)
local isPlayerVerified = VerifiedBadges.isPlayerVerified

local PlayerContextHeader = Roact.PureComponent:extend("PlayerContextHeader")

local FFlagVerifiedBadgeEnabled = require(script.Parent.Parent.Flags.GetFFlagShowVerifiedBadgePlayerContextHeader)

PlayerContextHeader.validateProps = t.strictInterface({
	player = t.union(
		playerInterface,
		t.strictInterface({
			IsOnline = t.boolean,
			Id = t.integer,
			Username = t.string,
			DisplayName = t.string,
		})
	),
	zIndex = t.optional(t.number),
})

function PlayerContextHeader:render()
	local userId = self.props.player.UserId or self.props.player.Id
	local username = self.props.player.Name or self.props.player.Username
	local displayName = self.props.player.DisplayName
	local hasVerifiedBadge = isPlayerVerified(self.props.player)

	return withStyle(function(style)
		-- TODO: Switch to using icon from UIBlox. Managing rounded corners will be a challenge.
		local avatarBackgroundImage = "rbxasset://textures/ui/PlayerList/NewAvatarBackground.png"

		return Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			Text = "",
			Size = UDim2.new(1, 0, 0, 92),
			LayoutOrder = 0,
			Selectable = false,
			ZIndex = self.props.zIndex or 1,
		}, {
			Background = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = avatarBackgroundImage,
				Size = UDim2.new(1, 0, 0, 72),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
			}, {
				TextContainerFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -(112 + 12), 1, 0),
					Position = UDim2.new(0, 112, 0, 0),
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 0),
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),

					DisplayName = if FFlagVerifiedBadgeEnabled()
						then Roact.createElement(
							VerifiedBadges.EmojiWrapper,
							{
								emoji = if hasVerifiedBadge then VerifiedBadges.emoji.verified else "",
								size = UDim2.new(1, 0, 0, 20),
								automaticSize = Enum.AutomaticSize.None,
							},
							{
								DisplayNameText = Roact.createElement(StyledTextLabel, {
									layoutOrder = 1,
									size = UDim2.new(1, 0, 0, 20),
									text = displayName,
									fontStyle = style.Font.Header2,
									colorStyle = style.Theme.TextEmphasis,
									textTruncate = Enum.TextTruncate.AtEnd,
									automaticSize = if hasVerifiedBadge then Enum.AutomaticSize.XY else Enum.AutomaticSize.None,
									fluidSizing = false,
									richText = false,
									lineHeight = 1,
								}),
							}
						)
						else
							Roact.createElement(StyledTextLabel, {
								layoutOrder = 1,
								size = UDim2.new(1, 0, 0, 20),
								text = displayName,
								fontStyle = style.Font.Header2,
								colorStyle = style.Theme.TextEmphasis,
								textTruncate = Enum.TextTruncate.AtEnd,
								fluidSizing = false,
								richText = false,
								lineHeight = 1,
							}),
					PlayerName = Roact.createElement(StyledTextLabel, {
						layoutOrder = 2,
						size = UDim2.new(1, 0, 0, 14),
						text = "@" .. username,
						fontStyle = style.Font.CaptionHeader,
						colorStyle = style.Theme.TextDefault,
						textTruncate = Enum.TextTruncate.AtEnd,
						fluidSizing = false,
						richText = false,
						lineHeight = 1,
					}),
				}),
			}),

			AvatarImage = Roact.createElement(LoadableImage, {
				Position = UDim2.new(0, 112 / 2, 0, 0),
				Size = UDim2.new(0, 92, 0, 92),
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				Image = "rbxthumb://type=AvatarHeadShot&id=" .. userId .. "&w=150&h=150",
				ZIndex = 3,
				renderOnFailed = function()
					return Roact.createElement(ImageSetLabel, {
						Position = UDim2.new(0, 112 / 2, 0, 0),
						Size = UDim2.new(0, 92, 0, 92),
						AnchorPoint = Vector2.new(0.5, 0),
						BackgroundTransparency = 1,
						Image = Images["icons/common/user_60"],
						ZIndex = 3,
					})
				end,
				useShimmerAnimationWhileLoading = true,
			}),

			Divider = not self.props.lastButton and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = style.Theme.Divider.Transparency,
				BackgroundColor3 = style.Theme.Divider.Color,
				BorderSizePixel = 0,
				ZIndex = 4,
			}),
		})
	end)
end

return PlayerContextHeader
