local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local GetFFlagEnableCrossExpVoice = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local PartyMicIcon = require(Chrome.Integrations.Party.PartyMicIcon)
local Constants = require(Chrome.Integrations.Party.Constants)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local FFlagChromeActivatedMappedSignal =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagChromeActivatedMappedSignal
local MappedSignal = ChromeUtils.MappedSignal

local CrossExperienceVoiceManager = CrossExperienceVoice.CrossExperienceVoiceManager.default

local isLocalPlayerMuted = nil
local isVoiceConnected = false

local isLocalPlayerMutedSignal = Signal.new()
local isVoiceConnectedSignal = Signal.new()

isLocalPlayerMutedSignal:connect(function(isMuted)
	isLocalPlayerMuted = isMuted
end)

isVoiceConnectedSignal:connect(function(isConnected)
	isVoiceConnected = isConnected
end)

local partyMicActivatedSignal: any = if FFlagChromeActivatedMappedSignal
	then MappedSignal.new(isLocalPlayerMutedSignal, function()
		return isVoiceConnected and isLocalPlayerMuted == false
	end)
	else nil

local FFlagChangeToggleMicText = require(Chrome.Flags.FFlagChangeToggleMicText)

local integration = nil

if GetFFlagEnableCrossExpVoice() then
	integration = ChromeService:register({
		id = Constants.TOGGLE_MIC_INTEGRATION_ID,
		label = if FFlagChangeToggleMicText then "CoreScripts.TopBar.Mic" else "CoreScripts.TopBar.ToggleMic",
		sideSheetPlacement = SideSheetPlacement.Unibar,
		isActivated = if FFlagChromeActivatedMappedSignal then partyMicActivatedSignal else nil,
		activated = function()
			local userId = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or -1
			if userId ~= -1 and isVoiceConnected and isLocalPlayerMuted ~= nil then
				if isLocalPlayerMuted then
					CrossExperienceVoiceManager:unmuteVoiceParticipant(userId)
				else
					CrossExperienceVoiceManager:muteVoiceParticipant(userId)
				end
			end
		end,
		components = {
			Icon = function()
				return PartyMicIcon({
					isLocalPlayerMutedSignal = isLocalPlayerMutedSignal,
					isVoiceConnectedSignal = isVoiceConnectedSignal,
				})
			end,
		},
		initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	})
end

return integration
