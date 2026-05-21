local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local SquadsCore = require(CorePackages.Workspace.Packages.SquadsCore)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local getColorFromUserId = SquadsCore.Common.getColorFromUserId
local useLastActiveParticipant = CrossExperienceVoice.Hooks.useLastActiveParticipant
local useSequentialAnimation = CrossExperienceVoice.Hooks.useSequentialAnimation

local usePrevious = RoactUtils.Hooks.usePrevious

local getStandardSizeAvatarHeadShotRbxthumb =
	require(CorePackages.Workspace.Packages.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb

type AnimationStep = CrossExperienceVoice.AnimationStep

local FIntActivityIndicatorAnimationMs = game:DefineFastInt("PartyVoiceTopbarActivityIndicatorAnimationMs", 50)
local FIntActivityIndicatorDebounceMs = game:DefineFastInt("PartyVoiceTopbarActivityIndicatorDebounceMs", 50)

local GetFFlagEnableCrossExpVoice = SharedFlags.GetFFlagEnableCrossExpVoice

type Animations = {
	ICON_OUT_ANIMATION: AnimationStep,
	ICON_IN_ANIMATION: AnimationStep,
	AVATAR_IN_ANIMATION: AnimationStep,
	AVATAR_OUT_ANIMATION: AnimationStep,
}

function createAnimations(iconSize: number, avatarSize: number): Animations
	return {
		ICON_OUT_ANIMATION = {
			value = 0,
			durationInMs = FIntActivityIndicatorAnimationMs,
			easingStyle = Enum.EasingStyle.Linear,
		},
		ICON_IN_ANIMATION = {
			value = iconSize,
			durationInMs = FIntActivityIndicatorAnimationMs,
			easingStyle = Enum.EasingStyle.Linear,
		},
		AVATAR_IN_ANIMATION = {
			value = avatarSize,
			durationInMs = FIntActivityIndicatorAnimationMs,
			easingStyle = Enum.EasingStyle.Linear,
		},
		AVATAR_OUT_ANIMATION = {
			value = 0,
			durationInMs = FIntActivityIndicatorAnimationMs,
			easingStyle = Enum.EasingStyle.Linear,
		},
	}
end

function getDisplayImage(userId: number, defaultIcon: string)
	return {
		thumbnail = if userId ~= -1 then getStandardSizeAvatarHeadShotRbxthumb(tostring(userId)) else defaultIcon,
		backgroundColor = if userId ~= -1 then getColorFromUserId(userId) else nil,
	}
end

function usePartyIcon(iconSize: number, avatarSize: number, defaultIcon: string)
	if GetFFlagEnableCrossExpVoice() then
		local latestActiveParticipant = useLastActiveParticipant()

		local lastActiveUserId = latestActiveParticipant and latestActiveParticipant.userId or -1

		local previousLastActiveUserId = usePrevious(lastActiveUserId)
		local displayImage, setDisplayImage = React.useState(getDisplayImage(lastActiveUserId, defaultIcon))
		local animatedIconSize, setAnimatedIconSize =
			useSequentialAnimation(if lastActiveUserId == -1 then iconSize else avatarSize)

		local animations = React.useMemo(function()
			return createAnimations(iconSize, avatarSize)
		end, { iconSize, avatarSize })

		local updateDisplayImage = React.useCallback(function(userId: number)
			setDisplayImage(function(prevState)
				local newDisplayImage = getDisplayImage(userId, defaultIcon)
				if
					prevState.thumbnail == newDisplayImage.thumbnail
					and prevState.backgroundColor == newDisplayImage.backgroundColor
				then
					return prevState
				end

				return newDisplayImage
			end)
		end, { defaultIcon, setDisplayImage } :: { any })

		local setIconSizeDebounce = React.useMemo(function()
			return CrossExperienceVoice.Utils.debounce(
				function(steps: { AnimationStep }, onStepCompleted: (number) -> ())
					setAnimatedIconSize(steps, onStepCompleted)
				end,
				FIntActivityIndicatorDebounceMs
			)
		end, {})

		React.useEffect(
			function()
				if previousLastActiveUserId ~= nil and lastActiveUserId ~= previousLastActiveUserId then
					setIconSizeDebounce.cancel()
					if lastActiveUserId == -1 then
						-- There is an avatar, change to icon
						setIconSizeDebounce.call(
							{ animations.AVATAR_OUT_ANIMATION, animations.ICON_IN_ANIMATION },
							function()
								updateDisplayImage(-1)
							end
						)
					elseif previousLastActiveUserId == -1 then
						-- There is an icon, change to avatar without debounce as we do not want the icon to linger
						setAnimatedIconSize(
							{ animations.ICON_OUT_ANIMATION, animations.AVATAR_IN_ANIMATION },
							function()
								updateDisplayImage(lastActiveUserId)
							end
						)
					else
						-- There is avatar, change to another avatar immediately
						updateDisplayImage(lastActiveUserId)
					end
				else
					-- It was caused by default icon changing or it's the first render.
					updateDisplayImage(lastActiveUserId)
				end
			end,
			{
				lastActiveUserId,
				updateDisplayImage,
				setIconSizeDebounce,
				animations,
			} :: { any }
		)

		return {
			image = displayImage,
			size = animatedIconSize,
		}
	else
		local animatedIconSize, _ = React.createBinding(iconSize)
		return {
			image = getDisplayImage(-1, defaultIcon),
			size = animatedIconSize,
		}
	end
end

return usePartyIcon
