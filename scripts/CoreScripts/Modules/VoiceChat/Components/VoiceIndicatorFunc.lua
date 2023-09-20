--[[
	Animated voice indicator.

	This is shown when a user is muted or not, and animates when they're
	actively talking.
]]

local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local ReactIs = require(CorePackages.Packages.ReactIs)

local UIBlox = require(CorePackages.UIBlox)
local useSelectionCursor = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local useVoiceState = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local Constants = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local DEFAULT_SIZE = UDim2.fromOffset(28, 28)

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
			local roundedLevel = 20 * math.floor(0.5 + 5 * level)
			return VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(roundedLevel), iconStyle)
		else
			return VoiceChatServiceManager:GetIcon("Error", iconStyle)
		end
	end
end

local HIDE_ON_ERROR_STATES = {
	[Constants.VOICE_STATE.ERROR] = true,
	[Constants.VOICE_STATE.HIDDEN] = true,
}

local function GenerateGUID()
	return HttpService:GenerateGUID()
end

type VoiceIndicatorProps = {
	hideOnError: boolean?,
	iconStyle: string,
	iconTransparency: any?,
	onClicked: any?,
	size: UDim2?,
	userId: number | string,
	disable: boolean?,
}

local function VoiceIndicator(props: VoiceIndicatorProps)
	local voiceState = useVoiceState(props.userId, props.disable or false)
	local level, setLevel = React.useBinding(0)
	local voiceStateBinding, setVoiceStateBinding = React.useBinding(voiceState)
	local voiceStateAndLevel = useJoinBinding({ voiceStateBinding, level })
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
	end, { talkingAnimation })

	local visible = not (props.hideOnError and (not voiceState or HIDE_ON_ERROR_STATES[voiceState]))
	local imageTransparency = voiceState == Constants.VOICE_STATE.LOCAL_MUTED and 0.5 or 0

	if props.iconTransparency then
		local t = imageTransparency
		if ReactIs.isBinding(props.iconTransparency) then
			imageTransparency = props.iconTransparency:map(function(v)
				return 1 - ((1 - v) * (1 - t))
			end)
		else
			imageTransparency = 1 - ((1 - props.iconTransparency) * (1 - t))
		end
	end

	local imageMapFunc = React.useMemo(function()
		return voiceStateAndLevel:map(mapLevelToIcon(props.iconStyle))
	end, { props.iconStyle })

	return Roact.createElement("ImageButton", {
		Size = props.size or DEFAULT_SIZE,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = imageMapFunc,
		ImageTransparency = imageTransparency,
		SelectionImageObject = useSelectionCursor(CursorKind.RoundedRectNoInset),
		Visible = visible,
		[Roact.Event.Activated] = props.onClicked,
	})
end

return VoiceIndicator
