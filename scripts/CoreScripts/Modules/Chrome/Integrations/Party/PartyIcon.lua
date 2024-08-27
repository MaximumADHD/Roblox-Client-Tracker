local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local SquadsCore = require(CorePackages.Workspace.Packages.SquadsCore)

local getColorFromUserId = SquadsCore.Common.getColorFromUserId
local useLastActiveParticipant = CrossExperienceVoice.Hooks.useLastActiveParticipant

local Images = UIBlox.App.ImageSet.Images

local getStandardSizeAvatarHeadShotRbxthumb =
	require(CorePackages.Workspace.Packages.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local ACTIVE_COLOR = Color3.fromRGB(57, 197, 130)

local ICON_SIZE = 36
local INDICATOR_WIDTH = 2
local INDICATOR_PADDING = 2
local AVATAR_SIZE = ICON_SIZE - 2 * INDICATOR_PADDING - 2 * INDICATOR_WIDTH

function PartyIcon()
	local latestActiveParticipant = useLastActiveParticipant()

	local lastActiveUserId = latestActiveParticipant and latestActiveParticipant.userId or -1
	local hasActiveUser = lastActiveUserId ~= -1

	local imageBackgroundColor = if hasActiveUser then getColorFromUserId(lastActiveUserId) else nil

	local imageSize = if hasActiveUser
		then UDim2.fromOffset(AVATAR_SIZE, AVATAR_SIZE)
		else UDim2.fromOffset(ICON_SIZE, ICON_SIZE)

	local thumbnail = if hasActiveUser
		then getStandardSizeAvatarHeadShotRbxthumb(tostring(lastActiveUserId))
		else Images["icons/menu/groups"]

	return React.createElement("Frame", {
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		UICorner = React.createElement("UICorner", {
			Name = "Corner",
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		UIStroke = if hasActiveUser
			then React.createElement("UIStroke", {
				Name = "Stroke",
				Thickness = INDICATOR_WIDTH,
				Color = ACTIVE_COLOR,
			}) :: any
			else nil,
		Icon = React.createElement(ImageSetLabel, {
			Name = "AvatarImage",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = imageSize,
			BackgroundTransparency = if hasActiveUser then 0 else 1,
			BackgroundColor3 = imageBackgroundColor,
			Image = thumbnail,
		}, {
			React.createElement("UICorner", {
				Name = "Corner",
				CornerRadius = UDim.new(1, 0),
			}),
		}),
	})
end

return PartyIcon
