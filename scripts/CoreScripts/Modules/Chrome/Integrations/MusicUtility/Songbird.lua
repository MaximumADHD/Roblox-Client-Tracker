--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local Constants = require(script.Parent.Constants)
local shouldUseSmallPeek = require(script.Parent.shouldUseSmallPeek)

local GetFFlagEnableChromeMusicIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeMusicIntegration
local GetFStringChromeMusicIntegrationUtilityLabel =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationUtilityLabel
local GetFStringChromeMusicIntegrationId =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationId
local GetFFlagSongbirdTranslationStrings =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdTranslationStrings
local GetFFlagPeekSizeConstraints = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekSizeConstraints

return if GetFFlagEnableChromeMusicIntegration()
	then ChromeService:register({
		id = if GetFFlagSongbirdTranslationStrings() then "now_playing" else GetFStringChromeMusicIntegrationId(),
		label = if GetFFlagSongbirdTranslationStrings()
			then "CoreScripts.TopBar.NowPlaying"
			else GetFStringChromeMusicIntegrationUtilityLabel(),
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		containerWidthSlots = ContainerSlotSignal.new(
			if GetFFlagPeekSizeConstraints()
				then if shouldUseSmallPeek()
					then Constants.MIN_TRACK_DETAILS_WIDTH
					else Constants.MAX_TRACK_DETAILS_WIDTH
				else 6
		),
		components = {
			Container = function()
				return React.createElement(Songbird.UnibarSongbirdWrapper)
			end,
		},
	})
	else nil
