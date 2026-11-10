local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local React = require(CorePackages.Packages.React)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local ChromeShared = script.Parent.Parent.ChromeShared
local GetStyleTokens = require(ChromeShared.Utility.GetStyleTokens)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagExpChatContinuousListeningChatIconDot = SharedFlags.FFlagExpChatContinuousListeningChatIconDot
local RedDot = if FFlagExpChatContinuousListeningChatIconDot then require(script.Parent.RedDot) else nil :: never

local useVoiceState = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local StyleTokens = GetStyleTokens()

local RED_DOT_COLOR = Color3.new(0.918, 0.2, 0.137)
local RED_DOT_SIZE = UDim2.new(0, StyleTokens.Size.Size_100, 0, StyleTokens.Size.Size_100)

return function(props): React.ReactNode
	local voiceState = useVoiceState(Players.LocalPlayer and Players.LocalPlayer.UserId or 0)
	local micActive = voiceState == VoiceConstants.VOICE_STATE.INACTIVE
		or voiceState == VoiceConstants.VOICE_STATE.TALKING

	if FFlagExpChatContinuousListeningChatIconDot then
		return React.createElement(RedDot, {
			name = "RedVoiceDot",
			position = props.position,
			visible = micActive,
		})
	end

	return React.createElement("Frame", {
		Name = "RedVoiceDot",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = props.position,
		Size = RED_DOT_SIZE,
		BackgroundColor3 = RED_DOT_COLOR,
		Visible = micActive,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
	})
end
