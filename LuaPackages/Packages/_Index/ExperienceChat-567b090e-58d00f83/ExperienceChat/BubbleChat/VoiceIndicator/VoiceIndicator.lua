--[[
	Animated voice indicator.

	This is shown when a user is muted or not, and animates when they're
	actively talking.
]]

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)

local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local UIBlox = require(Packages.UIBlox)
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local BubbleChat = script:FindFirstAncestor("BubbleChat")
local getVoiceIndicatorIcon = require(BubbleChat.Helpers.getVoiceIndicatorIcon)

local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local GetFFlagControlBubbleUpdates = require(ExperienceChat.Flags.GetFFlagControlBubbleUpdates)

local VoiceIndicator = Roact.PureComponent:extend("VoiceIndicator")

--[[VoiceIndicator.validateProps = t.strictInterface({
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
})]]

VoiceIndicator.defaultProps = {}

function VoiceIndicator:init()
	-- TODO Pass this down from one of the more central components when the real level is available
	self.level, self.updateLevel = Roact.createBinding(0)
	self.voiceState, self.updateVoiceState = Roact.createBinding(self.props.voiceState)

	-- Generate a fake volume level for now
	self.renderStepName = HttpService:GenerateGUID()
	RunService:BindToRenderStep(self.renderStepName, 1, function()
		self.updateLevel(math.random())
	end)

	self.levelIcon = Roact.joinBindings({ self.voiceState, self.level }):map(function(values: { string & number })
		local voiceState: string = values[1]
		local level: number = values[2]

		if GetFFlagControlBubbleUpdates() then
			return getVoiceIndicatorIcon(self.props.getIcon, voiceState, level, self.props.iconStyle)
		else
			local getIcon = self.props.getIcon

			if getIcon then
				if voiceState == "Muted" or voiceState == "LOCAL_MUTED" then
					return getIcon("Muted", self.props.iconStyle)
				elseif voiceState == "Connecting" then
					return getIcon("Connecting", self.props.iconStyle)
				elseif voiceState == "Inactive" then
					return getIcon("Unmuted0", self.props.iconStyle)
				elseif voiceState == "Talking" then
					local roundedLevel = 20 * math.floor(0.5 + 5 * level)
					return getIcon("Unmuted" .. tostring(roundedLevel), self.props.iconStyle)
				else
					return getIcon("Error", self.props.iconStyle)
				end
			else
				return ""
			end
		end
	end)

	self.onClicked = function()
		if self.props.onClicked and self.props.userId then
			self.props.onClicked(self.props.userId)
		end
	end
end

function VoiceIndicator:renderWithSelectionCursor(getSelectionCursor)
	local userIsHiddenOrErrored = self.props.voiceState == "Error" or self.props.voiceState == "Hidden"
	if self.props.hideOnError and (not self.props.voiceState or userIsHiddenOrErrored) then
		return nil
	end

	local imageTransparency = (self.props.voiceState == "LOCAL_MUTED") and 0.5 or 0

	if self.props.iconTransparency then
		local t = imageTransparency
		if type(self.props.iconTransparency) ~= "number" then
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
		[Roact.Event.Activated] = self.onClicked,
	})
end

function VoiceIndicator:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

function VoiceIndicator:didUpdate(previousProps, _previousState)
	Logger:trace(
		"Voice state updated to {} for ...{}",
		self.props.voiceState,
		string.sub(tostring(self.props.userId), -4)
	)

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
		voiceState = state.Voice.participants[props.userId],
	}
end

return RoactRodux.connect(mapStateToProps)(VoiceIndicator)
