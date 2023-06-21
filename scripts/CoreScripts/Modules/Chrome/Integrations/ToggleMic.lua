local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local React = require(CorePackages.Packages.React)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)

local ChromeService = require(script.Parent.Parent.Service)
local Constants = require(script.Parent.Parent.Unibar.Constants)
local ICON_SIZE = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)

local muteSelf = ChromeService:register({
	--initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "toggle_mic_mute",
	label = "Mute/Unmute Self",
	activated = function(self)
		VoiceChatServiceManager:ToggleMic()
	end,
	components = {
		Icon = function(props)
			return React.createElement(VoiceIndicator, {
				userId = tostring((Players.LocalPlayer :: Player).UserId),
				hideOnError = false,
				iconStyle = "MicLight",
				size = ICON_SIZE,
			})
		end,
	},
})

local function updateVoiceState(_, voiceState)
	local voiceEnabled = voiceState ~= (Enum :: any).VoiceChatState.Ended
	if voiceEnabled then
		muteSelf.availability.available()
	else
		muteSelf.availability.unavailable()
	end
end

if game:GetEngineFeature("VoiceChatSupported") then
	VoiceChatServiceManager:asyncInit()
		:andThen(function()
			VoiceChatServiceManager:SetupParticipantListeners()
			local voiceService = VoiceChatServiceManager:getService()
			if voiceService then
				updateVoiceState(nil, voiceService.VoiceChatState)
				voiceService.StateChanged:Connect(updateVoiceState)
			end
		end)
		:catch(function() end)
end

return muteSelf
