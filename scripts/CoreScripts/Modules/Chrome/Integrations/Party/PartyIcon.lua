local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local SquadsCore = require(CorePackages.Workspace.Packages.SquadsCore)
local usePrevious = RoactUtils.Hooks.usePrevious
local dependencyArray = RoactUtils.Hooks.dependencyArray

local getColorFromUserId = SquadsCore.Common.getColorFromUserId
local useLastActiveParticipant = CrossExperienceVoice.Hooks.useLastActiveParticipant
local useSequentialAnimation = CrossExperienceVoice.Hooks.useSequentialAnimation
local useParticipant = CrossExperienceVoice.Hooks.useParticipant

local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images

local getStandardSizeAvatarHeadShotRbxthumb =
	require(CorePackages.Workspace.Packages.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local ICON_SIZE = 36
local AVATAR_SIZE = 24

local ACTIVE_COLOR = Color3.fromRGB(57, 197, 130)
local ACTIVE_INDICATOR_STROKE_WIDTH = 2
local ACTIVE_INDICATOR_SIZE = UDim2.fromOffset(8, 8)
local ACTIVE_INDICATOR_OFFSET = (ICON_SIZE - AVATAR_SIZE) / 2

local FIntActivityIndicatorAnimationMs = game:DefineFastInt("PartyVoiceChromeActivityIndicatorAnimationMs", 50)
local FIntActivityIndicatorDebounceMs = game:DefineFastInt("PartyVoiceChromeActivityIndicatorDebounceMs", 50)

type AnimationStep = CrossExperienceVoice.AnimationStep

local ICON_OUT_ANIMATION: AnimationStep = {
	value = 0,
	durationInMs = FIntActivityIndicatorAnimationMs,
	easingStyle = Enum.EasingStyle.Linear,
}

local ICON_IN_ANIMATION: AnimationStep = {
	value = ICON_SIZE,
	durationInMs = FIntActivityIndicatorAnimationMs,
	easingStyle = Enum.EasingStyle.Linear,
}

local AVATAR_IN_ANIMATION: AnimationStep = {
	value = AVATAR_SIZE,
	durationInMs = FIntActivityIndicatorAnimationMs,
	easingStyle = Enum.EasingStyle.Linear,
}

local AVATAR_OUT_ANIMATION: AnimationStep = {
	value = 0,
	durationInMs = FIntActivityIndicatorAnimationMs,
	easingStyle = Enum.EasingStyle.Linear,
}

local PARTY_ICON = Images["icons/menu/groups"]

function getDisplayImage(userId: number)
	return {
		thumbnail = if userId ~= -1 then getStandardSizeAvatarHeadShotRbxthumb(tostring(userId)) else PARTY_ICON,
		backgroundColor = if userId ~= -1 then getColorFromUserId(userId) else nil,
	}
end

function PartyIcon()
	local style = useStyle()
	local userId = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or -1
	local voiceParticipant = useParticipant(userId)

	local latestActiveParticipant = useLastActiveParticipant()

	local lastActiveUserId = latestActiveParticipant and latestActiveParticipant.userId or -1
	local previousLastActiveUserId = usePrevious(lastActiveUserId)
	local displayImage, setDisplayImage = React.useState(getDisplayImage(lastActiveUserId))
	local iconSize, setIconSize = useSequentialAnimation(if lastActiveUserId == -1 then ICON_SIZE else AVATAR_SIZE)

	local updateDisplayImage = React.useCallback(function(userId: number)
		setDisplayImage(getDisplayImage(userId))
	end, {})

	local setIconSizeDebounce = React.useMemo(function()
		return CrossExperienceVoice.Utils.debounce(function(steps: { AnimationStep }, onStepCompleted: (number) -> ())
			setIconSize(steps, onStepCompleted)
		end, FIntActivityIndicatorDebounceMs)
	end, {})

	React.useEffect(function()
		if lastActiveUserId ~= previousLastActiveUserId then
			setIconSizeDebounce.cancel()
			if lastActiveUserId == -1 then
				-- There is an avatar, change to icon
				setIconSizeDebounce.call({ AVATAR_OUT_ANIMATION, ICON_IN_ANIMATION }, function()
					updateDisplayImage(-1)
				end)
			elseif previousLastActiveUserId == -1 then
				-- There is an icon, change to avatar without debounce as we do not want the icon to linger
				setIconSize({ ICON_OUT_ANIMATION, AVATAR_IN_ANIMATION }, function()
					updateDisplayImage(lastActiveUserId)
				end)
			else
				-- There is avatar, change to another avatar immediately
				updateDisplayImage(lastActiveUserId)
			end
		end
	end, dependencyArray(lastActiveUserId, previousLastActiveUserId))

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
			Size = iconSize:map(function(value)
				return UDim2.fromOffset(value, value)
			end),
			BackgroundTransparency = if displayImage.backgroundColor == nil then 1 else 0,
			BackgroundColor3 = displayImage.backgroundColor,
			Image = displayImage.thumbnail,
		}, {
			React.createElement("UICorner", {
				Name = "Corner",
				CornerRadius = UDim.new(1, 0),
			}),
		}),
		Badge = if voiceParticipant
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
