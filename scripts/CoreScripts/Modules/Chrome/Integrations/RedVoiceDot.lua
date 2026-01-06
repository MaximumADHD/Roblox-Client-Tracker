local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()

local React = require(CorePackages.Packages.React)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local ChromeShared = script.Parent.Parent.ChromeShared
local GetStyleTokens = if FFlagAdaptUnibarAndTiltSizing
	then require(ChromeShared.Utility.GetStyleTokens)
	else nil :: never

local useVoiceState = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local StyleTokens = if FFlagAdaptUnibarAndTiltSizing then GetStyleTokens() else nil :: never

local RED_DOT_COLOR = Color3.new(0.918, 0.2, 0.137)
local RED_DOT_SIZE = if FFlagAdaptUnibarAndTiltSizing
	then UDim2.new(0, StyleTokens.Size.Size_100, 0, StyleTokens.Size.Size_100)
	else UDim2.new(0, 4, 0, 4)

return function(props)
	local voiceState = useVoiceState(Players.LocalPlayer and Players.LocalPlayer.UserId or 0)
	local micActive = voiceState == VoiceConstants.VOICE_STATE.INACTIVE
		or voiceState == VoiceConstants.VOICE_STATE.TALKING

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
