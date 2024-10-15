local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)

local useIsVoiceConnected = CrossExperienceVoice.Hooks.useIsVoiceConnected
local usePartyIcon = require(script.Parent.usePartyIcon)

local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local ICON_SIZE = 36
local AVATAR_SIZE = 24

local ACTIVE_COLOR = Color3.fromRGB(57, 197, 130)
local ACTIVE_INDICATOR_STROKE_WIDTH = 2
local ACTIVE_INDICATOR_SIZE = UDim2.fromOffset(8, 8)
local ACTIVE_INDICATOR_OFFSET = (ICON_SIZE - AVATAR_SIZE) / 2

local PARTY_ICON = Images["icons/menu/groups"]

function PartyIcon()
	local style = useStyle()
	local isVoiceConnected = useIsVoiceConnected()
	local partyIcon = usePartyIcon(ICON_SIZE, AVATAR_SIZE, PARTY_ICON)

	return React.createElement("Frame", {
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		Icon = React.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = partyIcon.size:map(function(value)
				return UDim2.fromOffset(value, value)
			end),
			BackgroundTransparency = if partyIcon.image.backgroundColor == nil then 1 else 0,
			BackgroundColor3 = partyIcon.image.backgroundColor,
			Image = partyIcon.image.thumbnail,
		}, {
			React.createElement("UICorner", {
				Name = "Corner",
				CornerRadius = UDim.new(1, 0),
			}),
		}),
		Badge = if isVoiceConnected
			then React.createElement("Frame", {
				BackgroundColor3 = ACTIVE_COLOR,
				Position = UDim2.new(1, -ACTIVE_INDICATOR_OFFSET, 0, ACTIVE_INDICATOR_OFFSET),
				AnchorPoint = Vector2.new(1, 0),
				Size = ACTIVE_INDICATOR_SIZE,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}) :: any,
				UIStroke = React.createElement("UIStroke", {
					Color = style.Tokens.Semantic.Color.Common.BadgeContent.Color3,
					Transparency = style.Tokens.Semantic.Color.Common.BadgeContent.Transparency,
					Thickness = ACTIVE_INDICATOR_STROKE_WIDTH,
				}) :: any,
			})
			else nil,
	})
end

return PartyIcon
