--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local VoiceChatShield = Roact.PureComponent:extend("VoiceChatShield")

function VoiceChatShield:getVoiceEnabledString()
	if self.state.xboxMuteAllState then
		return RobloxTranslator:FormatByKey("EnableVoiceKey")
	else
		return RobloxTranslator:FormatByKey("DisableVoiceKey")
	end
end

function VoiceChatShield:init()
	self.seenYButtonPressed = false
	self.shieldRef = Roact.createRef()

	self.state = {
		xboxMuteAllState = false,
	}

	local createHintActionView = require(RobloxGui.Modules.Shell.HintActionView)
	local xboxToggleVoiceHotkey = createHintActionView(nil, "ToggleVoiceChat", UDim2.new(0.96, -1, 0.96, -1))
	xboxToggleVoiceHotkey:SetText(self:getVoiceEnabledString())
	xboxToggleVoiceHotkey:SetImage("rbxasset://textures/ui/Shell/ButtonIcons/YButton.png")
	self.xboxToggleVoiceHotkey = xboxToggleVoiceHotkey
end

function VoiceChatShield:render()
	return WithLayoutValues(function(layoutValues)
		return Roact.createElement(Roact.Portal, {
			target = RobloxGui ,
		}, {
			PlayerListShield = Roact.createElement("Frame", {
				AutoLocalize = false,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = layoutValues.VoiceChatShieldColor,
				BackgroundTransparency = layoutValues.VoiceChatShieldTransparency,
				Visible = self.props.isVisible,

				[Roact.Ref] = self.shieldRef,
			})
		})
	end)
end

function VoiceChatShield:bindAction()
	self.xboxToggleVoiceHotkey:BindAction(function(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				self.seenYButtonPressed = true
			elseif inputState == Enum.UserInputState.End and self.seenYButtonPressed then
				self:setState({
					xboxMuteAllState = not self.state.xboxMuteAllState
				})
				local VoiceChatServiceXbox = game:GetService("VoiceChatServiceXbox")
				VoiceChatServiceXbox:VoiceChatSetMuteAllState(self.state.xboxMuteAllState)
				self.xboxToggleVoiceHotkey:SetText(self:getVoiceEnabledString())
				self.seenYButtonPressed = false

				-- Analytics
				local eventName = self.state.xboxMuteAllState and "XboxDisableVoiceChat" or "XboxEnableVoiceChat"
				RbxAnalyticsService:ReportCounter(eventName, 1)
				RbxAnalyticsService:SetRBXEventStream("console", "XboxOne", eventName, {})
			end
		end,
		Enum.KeyCode.ButtonY
	)
end

function VoiceChatShield:didMount()
	self.xboxToggleVoiceHotkey:SetParent(self.shieldRef.current)
	if self.props.isVisible then
		self:bindAction()
	end
end

function VoiceChatShield:didUpdate(prevProps)
	if self.props.isVisible ~= prevProps.isVisible then
		if self.props.isVisible then
			self:bindAction()
		else
			self.xboxToggleVoiceHotkey:UnbindAction()
			self.seenYButtonPressed = false
		end
	end
	self.xboxToggleVoiceHotkey:SetParent(self.shieldRef.current)
end

function VoiceChatShield:willUnmount()
	self.xboxToggleVoiceHotkey:UnbindAction()
end

local function mapStateToProps(state)
	return {
		isVisible = state.displayOptions.isVisible,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(VoiceChatShield)