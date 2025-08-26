local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)

local useParticipant = CrossExperienceVoice.Hooks.useParticipant
local useIsVoiceConnected = CrossExperienceVoice.Hooks.useIsVoiceConnected
local useIsActiveParticipant = CrossExperienceVoice.Hooks.useIsActiveParticipant
local useIsParticipantMuted = CrossExperienceVoice.Hooks.useIsParticipantMuted

local Chrome = script.Parent.Parent.Parent
local UnibarStyle = require(Chrome.ChromeShared.Unibar.UnibarStyle)

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local VOICE_INDICATOR_ICON_FOLDER = "MicLight"

local FIntPartyMicVoiceIndicatorFrameBuffer = game:DefineFastInt("PartyMicVoiceIndicatorFrameBuffer", 3)

local function getLoadingIndicatorIcon(
	voiceParticipant: any,
	isMuted: boolean,
	isVoiceConnected: boolean,
	isActive: boolean?,
	level: number?
)
	if not isVoiceConnected or not voiceParticipant or isMuted then
		return VoiceChat.Utils.GetIcon("Muted", VOICE_INDICATOR_ICON_FOLDER :: any)
	end
	if isActive then
		return VoiceChat.Utils.GetIcon("Unmuted", VOICE_INDICATOR_ICON_FOLDER :: any, level)
	end
	return VoiceChat.Utils.GetIcon("Unmuted0", VOICE_INDICATOR_ICON_FOLDER :: any)
end

function PartyMicIcon(props)
	local userId = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or -1
	local isVoiceConnected = useIsVoiceConnected()
	local voiceParticipant = useParticipant(userId)
	local isActive = useIsActiveParticipant(userId)
	local isActiveRef = React.useRef(isActive)
	local isMuted = useIsParticipantMuted(userId) == true
	local frameCounter = React.useRef(0)
	local level, setLevel = React.useState(0)
	local renderStepName = React.useMemo(function()
		return HttpService:GenerateGUID()
	end, {})

	local unibarStyle
	local iconSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconSize = unibarStyle.ICON_SIZE
	else
		iconSize = 36
	end

	React.useEffect(function()
		if voiceParticipant then
			props.isLocalPlayerMutedSignal:fire(voiceParticipant.isMuted)
		end
	end, { voiceParticipant })

	React.useEffect(function()
		props.isVoiceConnectedSignal:fire(isVoiceConnected)
	end, { isVoiceConnected })

	local onRenderStep = React.useCallback(function()
		if isActiveRef.current then
			if frameCounter.current > FIntPartyMicVoiceIndicatorFrameBuffer then
				setLevel(math.random())
				frameCounter.current = 0
			else
				frameCounter.current = frameCounter.current + 1
			end
		end
	end, {})

	React.useEffect(function()
		isActiveRef.current = isActive
	end, { isActive })

	React.useEffect(function()
		RunService:BindToRenderStep(renderStepName, 1, onRenderStep)

		return function()
			RunService:UnbindFromRenderStep(renderStepName)
		end
	end, {})

	local icon = React.useMemo(function()
		return getLoadingIndicatorIcon(voiceParticipant, isMuted, isVoiceConnected, isActive, level)
	end, { voiceParticipant, isMuted, isVoiceConnected, isActive, level } :: { any })

	return React.createElement("Frame", {
		Size = UDim2.new(0, iconSize, 0, iconSize),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		Icon = React.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(iconSize, iconSize),
			BackgroundTransparency = 1,
			Image = icon,
		}, {
			React.createElement("UICorner", {
				Name = "Corner",
				CornerRadius = UDim.new(1, 0),
			}),
		}),
	})
end

return PartyMicIcon
