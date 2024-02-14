--[[
	Animated voice indicator.

	This is shown when a user is muted or not, and animates when they're
	actively talking.
]]

local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
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

local GetFFlagRemoveInGameChatBubbleChatReferences = require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)

if GetFFlagRemoveInGameChatBubbleChatReferences() then
	Constants = require(RobloxGui.Modules.VoiceChat.Constants) :: any
end

local DEFAULT_SIZE = UDim2.fromOffset(28, 28)

local function useJoinBinding(bindings)
	return React.useMemo(function()
		return Roact.joinBindings(bindings)
	end, {})
end

local function mapLevelToIcon(iconStyle, showShimmer)
	-- TODO: look at caching most of the GetIcon lookups
	return function(values)
		local voiceState = values[1]
		local level = values[2]
		if voiceState == Constants.VOICE_STATE.MUTED or voiceState == Constants.VOICE_STATE.LOCAL_MUTED then
			return VoiceChatServiceManager:GetIcon("Muted", iconStyle)
		elseif voiceState == Constants.VOICE_STATE.CONNECTING then
			if showShimmer and iconStyle == "MicLight" then
				return VoiceChatServiceManager:GetIcon("Connecting", "MicDark")
			else
				return VoiceChatServiceManager:GetIcon("Connecting", iconStyle)
			end
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
	selectable: boolean?,
	userId: number | string,
	disable: boolean?,
	showConnectingShimmer: boolean?
}

local function createTweenShimmeringEffect(shimmerGradientRef: any)
	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, -1)
	local offset = { Offset = Vector2.new(1, 0) }
	local shimmer = TweenService:Create(shimmerGradientRef:getValue(), tweenInfo, offset)

	return shimmer
end

local function VoiceIndicator(props: VoiceIndicatorProps)
	local voiceState = useVoiceState(props.userId, props.disable or false)
	local level, setLevel = React.useBinding(0)
	local selectable = if props.selectable ~= nil then props.selectable else true
	local voiceStateBinding, setVoiceStateBinding = React.useBinding(voiceState)
	local voiceStateAndLevel = useJoinBinding({ voiceStateBinding, level })
	local renderStepName = React.useRef(GenerateGUID()).current or ""
	setVoiceStateBinding(voiceState)

	local isTalking = voiceState == Constants.VOICE_STATE.TALKING
	local isConnecting = voiceState == Constants.VOICE_STATE.CONNECTING
	local showShimmer = props.showConnectingShimmer == true
	local shimmerGradientRef = React.useRef(nil :: UIGradient?)

	React.useEffect(function()
		if showShimmer and isConnecting and shimmerGradientRef.current then
			local shimmer = createTweenShimmeringEffect(shimmerGradientRef)
			shimmer:Play()

			return function()
				shimmer:Cancel()
			end
		end
		return function() end
	end, { isConnecting, showShimmer })

	React.useEffect(function()
		if isTalking then
			RunService:BindToRenderStep(renderStepName, 1, function()
				setLevel(math.random())
			end)
		end
		return function()
			if isTalking then
				RunService:UnbindFromRenderStep(renderStepName)
			end
		end
	end, { isTalking })

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
		return voiceStateAndLevel:map(mapLevelToIcon(props.iconStyle, showShimmer))
	end, { props.iconStyle })

	return Roact.createElement("ImageButton", {
		Size = props.size or DEFAULT_SIZE,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = imageMapFunc,
		ImageTransparency = imageTransparency,
		Selectable = selectable,
		SelectionImageObject = useSelectionCursor(CursorKind.RoundedRectNoInset),
		Visible = visible,
		[Roact.Event.Activated] = props.onClicked,
	}, {
		ShimmerGradient = if showShimmer then Roact.createElement("UIGradient", {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.new(0.6, 0.6, 0.6)),
				ColorSequenceKeypoint.new(0.5, Color3.new(0.8, 0.8, 0.8)),
				ColorSequenceKeypoint.new(1, Color3.new(0.6, 0.6, 0.6)),
			}),
			Enabled = isConnecting,
			Rotation = -45,
			Offset = Vector2.new(-1, 0),
			[Roact.Ref] = shimmerGradientRef
		}) else nil,
	})
end

return VoiceIndicator
