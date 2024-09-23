--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local GetFFlagEnableChromeMusicIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeMusicIntegration
local GetFStringChromeMusicIntegrationUtilityLabel =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationUtilityLabel
local GetFStringChromeMusicIntegrationId =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationId
local GetFFlagSongbirdTranslationStrings =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdTranslationStrings

return if GetFFlagEnableChromeMusicIntegration()
	then ChromeService:register({
		id = if GetFFlagSongbirdTranslationStrings() then "now_playing" else GetFStringChromeMusicIntegrationId(),
		label = if GetFFlagSongbirdTranslationStrings()
			then "CoreScripts.TopBar.NowPlaying"
			else GetFStringChromeMusicIntegrationUtilityLabel(),
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		containerWidthSlots = ContainerSlotSignal.new(6),
		components = {
			Container = function()
				return React.createElement(Songbird.UnibarSongbirdWrapper)
			end,
		},
	})
	else nil
