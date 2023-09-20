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

local UIBlox = require(CorePackages.UIBlox)
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local log = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)

local Roact = require(CorePackages.Packages.Roact)
local ReactIs = require(CorePackages.Packages.ReactIs)

local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)

local GetFFlagEnableVoiceChatLocalMuteUI = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatLocalMuteUI)

local Constants = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local VoiceIndicator = Roact.PureComponent:extend("VoiceIndicator")

VoiceIndicator.validateProps = t.strictInterface({
	onClicked = t.optional(t.callback),
	userId = t.string,
	hideOnError = t.optional(t.boolean),
	size = t.optional(t.UDim2),
	iconStyle = t.optional(
		t.union(t.literal("MicDark"), t.literal("MicLight"), t.literal("SpeakerDark"), t.literal("SpeakerLight"))
	),
	iconTransparency = t.optional(t.union(t.number, t.table)),

	-- RoactRodux
	voiceState = t.string,
})

VoiceIndicator.defaultProps = {}

function VoiceIndicator:getIcon(name)
	return "rbxasset://textures/ui/VoiceChat/" .. name .. ".png"
end

function VoiceIndicator:init()
	-- TODO Pass this down from one of the more central components when the real level is available
	self.level, self.updateLevel = Roact.createBinding(0)
	self.voiceState, self.updateVoiceState = Roact.createBinding(self.props.voiceState)

	-- Generate a fake volume level for now
	self.renderStepName = HttpService:GenerateGUID()
	RunService:BindToRenderStep(self.renderStepName, 1, function()
		self.updateLevel(math.random())
	end)

	self.levelIcon = Roact.joinBindings({ self.voiceState, self.level }):map(function(values)
		-- ROBLOX FIXME Luau: Luau cannot infer that values is a heterogeneous tuple.
		local voiceState = values[1] :: string
		local level = values[2] :: number

		if GetFFlagEnableVoiceChatLocalMuteUI() then
			if voiceState == Constants.VOICE_STATE.MUTED or voiceState == Constants.VOICE_STATE.LOCAL_MUTED then
				return VoiceChatServiceManager:GetIcon("Muted", self.props.iconStyle)
			elseif voiceState == Constants.VOICE_STATE.CONNECTING then
				return VoiceChatServiceManager:GetIcon("Connecting", self.props.iconStyle)
			elseif voiceState == Constants.VOICE_STATE.INACTIVE then
				return VoiceChatServiceManager:GetIcon("Unmuted0", self.props.iconStyle)
			elseif voiceState == Constants.VOICE_STATE.TALKING then
				local roundedLevel = 20 * math.floor(0.5 + 5 * level)
				return VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(roundedLevel), self.props.iconStyle)
			else
				return VoiceChatServiceManager:GetIcon("Error", self.props.iconStyle)
			end
		else
			if voiceState == Constants.VOICE_STATE.MUTED then
				return self:getIcon("Muted")
			elseif voiceState == Constants.VOICE_STATE.CONNECTING then
				return self:getIcon("Connecting")
			elseif voiceState == Constants.VOICE_STATE.INACTIVE then
				return self:getIcon("Unmuted0")
			elseif voiceState == Constants.VOICE_STATE.TALKING then
				local roundedLevel = 20 * math.floor(0.5 + 5 * level)
				return self:getIcon("Unmuted" .. tostring(roundedLevel))
			else
				return self:getIcon("Error")
			end
		end
	end)
end

function VoiceIndicator:renderWithSelectionCursor(getSelectionCursor)
	local userIsHiddenOrErrored = self.props.voiceState == Constants.VOICE_STATE.ERROR
		or self.props.voiceState == Constants.VOICE_STATE.HIDDEN
	if self.props.hideOnError and (not self.props.voiceState or userIsHiddenOrErrored) then
		return nil
	end

	local imageTransparency = (
		self.props.voiceState == Constants.VOICE_STATE.LOCAL_MUTED and GetFFlagEnableVoiceChatLocalMuteUI()
	)
			and 0.5
		or 0

	if self.props.iconTransparency then
		local t = imageTransparency
		if ReactIs.isBinding(self.props.iconTransparency) then
			imageTransparency = self.props.iconTransparency:map(function(v)
				return 1 - ((1 - v) * (1 - t))
			end)
		else
			imageTransparency = 1 - ((1 - self.props.iconTransparency) * (1 - t))
		end
	end

	return Roact.createElement("ImageButton", {
		Size = self.props.size or UDim2.fromOffset(28, 28),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = self.levelIcon,
		ImageTransparency = imageTransparency,
		SelectionImageObject = getSelectionCursor(CursorKind.RoundedRectNoInset),
		[Roact.Event.Activated] = self.props.onClicked,
	})
end

function VoiceIndicator:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

function VoiceIndicator:didUpdate(previousProps, previousState)
	log:trace("Voice state updated to {} for ...{}", self.props.voiceState, string.sub(tostring(self.props.userId), -4))
	if previousProps.voiceState ~= self.props.voiceState then
		self.updateVoiceState(self.props.voiceState)
	end
end

function VoiceIndicator:willUnmount()
	pcall(function()
		RunService:UnbindFromRenderStep(self.renderStepName)
	end)
end

local function mapStateToProps(state, props)
	return {
		voiceState = state.voiceState[props.userId],
	}
end

return RoactRodux.connect(mapStateToProps)(VoiceIndicator)
