local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Roact)
local Otter = require(CorePackages.Otter)
local t = require(CorePackages.Packages.t)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local SPRING_PARAMS = {
	frequency = 4,
	dampingRatio = 1,
}

local MicOn = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.MicOnRecording")
local MicOff = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.MicOff")
local VOICE_RECORDING_INDICATOR_FADE_TIME = 5
local RENDER_STEP_NAME = "RoactVoiceRecordingIndicator"

local RecordingIndicator = Roact.PureComponent:extend("PermissionsButtons")

RecordingIndicator.validateProps = t.strictInterface({
	micOn = t.boolean,
	isSmallTouchScreen = t.optional(t.boolean),
})

function RecordingIndicator:init()
	self:setState({
		lastVoiceRecordingIndicatorTextUpdated = tick(),
		voiceRecordingIndicatorTextMotor = Otter.createSingleMotor(1),
		textOpacity = 1,
	})
end

function RecordingIndicator:didMount()
	task.spawn(function()
		self.state.voiceRecordingIndicatorTextMotor:onStep(function(value)
			self:setState({
				textOpacity = value,
			})
		end)
		RunService:BindToRenderStep(RENDER_STEP_NAME, Enum.RenderPriority.Last.Value, function()
			local timeDiff = tick() - self.state.lastVoiceRecordingIndicatorTextUpdated
			if
				timeDiff >= VOICE_RECORDING_INDICATOR_FADE_TIME
				and not self.props.micOn
				and self.state.textOpacity >= 1
			then
				self.state.voiceRecordingIndicatorTextMotor:setGoal(Otter.spring(0, SPRING_PARAMS))
				self.state.voiceRecordingIndicatorTextMotor:start()
			end
		end)
	end)
end

function RecordingIndicator:willUnmount()
	self.state.voiceRecordingIndicatorTextMotor:destroy()
	RunService:UnbindFromRenderStep(RENDER_STEP_NAME)
end

function RecordingIndicator:shouldUpdate(nextProps, nextState)
	if self.props.micOn ~= nextProps.micOn then
		self:setState({
			lastVoiceRecordingIndicatorTextUpdated = tick(),
		})
		if nextProps.micOn then
			self.state.voiceRecordingIndicatorTextMotor:setGoal(Otter.spring(1, SPRING_PARAMS))
			self.state.voiceRecordingIndicatorTextMotor:start()
		end
	end
	return self.props.micOn ~= nextProps.micOn or self.state.textOpacity ~= nextState.textOpacity
end

function RecordingIndicator:render()
	return Roact.createElement("TextLabel", {
		Text = if self.props.micOn then MicOn else MicOff,
		AutomaticSize = Enum.AutomaticSize.XY,
		Visible = self.props.hasMicPermissions,
		TextSize = if self.props.isSmallTouchScreen then 10 else 12,
		Font = AppFonts.default:getMedium(),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextTransparency = 1 - self.state.textOpacity,
		BackgroundTransparency = 1,
		LayoutOrder = 6,
		TextWrapped = true,
	})
end

return RecordingIndicator
