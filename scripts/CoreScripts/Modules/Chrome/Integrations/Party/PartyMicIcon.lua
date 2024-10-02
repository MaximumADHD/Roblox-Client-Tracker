local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)

local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local VoiceChat = require(CorePackages.Workspace.Packages.VoiceChat)

local useParticipant = CrossExperienceVoice.Hooks.useParticipant
local useIsVoiceConnected = CrossExperienceVoice.Hooks.useIsVoiceConnected
local useIsActiveParticipant = CrossExperienceVoice.Hooks.useIsActiveParticipant

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local ICON_SIZE = 36

local VOICE_INDICATOR_ICON_FOLDER = "MicLight"

local VOICE_INDICATOR_FRAME_IGNORE_BUGGER = 3

local function getLoadingIndicatorIcon(
	voiceParticipant: any,
	isVoiceConnected: boolean,
	isActive: boolean?,
	level: number?
)
	if not isVoiceConnected or not voiceParticipant or voiceParticipant.isMuted then
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
	local frameCounter = React.useRef(0)
	local level, setLevel = React.useState(0)
	local renderStepName = React.useMemo(function()
		return HttpService:GenerateGUID()
	end, {})

	React.useEffect(function()
		if voiceParticipant then
			props.isLocalPlayerMutedSignal:fire(voiceParticipant.isMuted)
		end
	end, { voiceParticipant })

	React.useEffect(function()
		props.isVoiceConnectedSignal:fire(isVoiceConnected)
	end, { isVoiceConnected })

	React.useEffect(function()
		RunService:BindToRenderStep(renderStepName, 1, function()
			if frameCounter.current > VOICE_INDICATOR_FRAME_IGNORE_BUGGER then
				setLevel(math.random())
				frameCounter.current = 0
			else
				frameCounter.current = frameCounter.current + 1
			end
		end)

		return function()
			RunService:UnbindFromRenderStep(renderStepName)
		end
	end, {})

	local icon = getLoadingIndicatorIcon(voiceParticipant, isVoiceConnected, isActive, level)

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
			Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
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
