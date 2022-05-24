local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Style.withStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local PlayerContextHeader = Roact.PureComponent:extend("PlayerContextHeader")

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
})

function PlayerContextHeader:render()
	local userId = self.props.player.UserId or self.props.player.Id
	local username = self.props.player.Name or self.props.player.Username
	local displayName = self.props.player.DisplayName

	return withStyle(function(style)
		-- TODO: Switch to using icon from UIBlox. Managing rounded corners will be a challenge.
		local avatarBackgroundImage = "rbxasset://textures/ui/PlayerList/NewAvatarBackground.png"

		return Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			Text = "",
			Size = UDim2.new(1, 0, 0, 92),
			LayoutOrder = 0,
			Selectable = false,
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

					DisplayName = Roact.createElement(StyledTextLabel, {
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

			AvatarImage = Roact.createElement("ImageLabel", {
				Position = UDim2.new(0, 112 / 2, 0, 0),
				Size = UDim2.new(0, 92, 0, 92),
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				Image = "rbxthumb://type=AvatarHeadShot&id=" .. userId .. "&w=150&h=150",
				ZIndex = 2,
			}),

			Divider = not self.props.lastButton and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = style.Theme.Divider.Transparency,
				BackgroundColor3 = style.Theme.Divider.Color,
				BorderSizePixel = 0,
				ZIndex = 3,
			}),
		})
	end)
end

return PlayerContextHeader
