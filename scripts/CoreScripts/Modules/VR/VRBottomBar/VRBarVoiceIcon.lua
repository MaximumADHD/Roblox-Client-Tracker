local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)

local useVoiceState = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local Constants = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local GetFFlagRemoveInGameChatBubbleChatReferences = require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)

if GetFFlagRemoveInGameChatBubbleChatReferences() then
	Constants = require(RobloxGui.Modules.VoiceChat.Constants) :: any
end

local DEFAULT_SIZE = UDim2.fromOffset(36, 36)

local function useJoinBinding(bindings)
	return React.useMemo(function()
		return Roact.joinBindings(bindings)
	end, {})
end

local function mapLevelToIcon(iconStyle)
	-- TODO: look at caching most of the GetIcon lookups
	return function(values)
		local voiceState = values[1]
		local level = values[2]
		if voiceState == Constants.VOICE_STATE.MUTED or voiceState == Constants.VOICE_STATE.LOCAL_MUTED then
			return VoiceChatServiceManager:GetIcon("Muted", iconStyle)
		elseif voiceState == Constants.VOICE_STATE.CONNECTING then
			return VoiceChatServiceManager:GetIcon("Connecting", iconStyle)
		elseif voiceState == Constants.VOICE_STATE.INACTIVE then
			return VoiceChatServiceManager:GetIcon("Unmuted0", iconStyle)
		elseif voiceState == Constants.VOICE_STATE.TALKING then
			local roundedLevel = 20 * math.floor(0.5 + 5*level)
			return VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(roundedLevel), iconStyle)
		else
			return VoiceChatServiceManager:GetIcon("Error", iconStyle)
		end
	end
end

local function GenerateGUID() return HttpService:GenerateGUID() end

type VoiceIndicatorProps = {
	BackgroundTransparency: number?,
	ImageColor3: Color3?,
	ImageTransparency: number?,
	Position: UDim2?,
	Size: UDim2?,
	iconStyle: string,
	userId: number | string,
	disable: boolean?,
}

local function VRBarVoiceIcon(props: VoiceIndicatorProps)
	local voiceState = useVoiceState(props.userId, props.disable or false)
	local level, setLevel = React.useBinding(0)
	local voiceStateBinding, setVoiceStateBinding = React.useBinding(voiceState)
	local voiceStateAndLevel = useJoinBinding({voiceStateBinding, level})
	local renderStepName = React.useRef(GenerateGUID()).current or ""
	setVoiceStateBinding(voiceState)

	local talkingAnimation = voiceState == Constants.VOICE_STATE.TALKING

	React.useEffect(function()
		if talkingAnimation then
			RunService:BindToRenderStep(renderStepName, 1, function()
				setLevel(math.random())
			end)
		end
		return function()
			if talkingAnimation then
				RunService:UnbindFromRenderStep(renderStepName)
			end
		end
	end, {talkingAnimation})

	local imageMapFunc = React.useMemo(function()
		return voiceStateAndLevel:map(mapLevelToIcon(props.iconStyle))
	end, {props.iconStyle})

	return Roact.createElement("ImageLabel", {
		BackgroundTransparency = props.BackgroundTransparency or 1,
		Image = imageMapFunc,
		ImageColor3 = props.ImageColor3,
		ImageTransparency = props.ImageTransparency,
		Position = props.Position,
		Size = props.Size or DEFAULT_SIZE,
		[Roact.Children] = props[Roact.Children],
	})
end

return VRBarVoiceIcon
