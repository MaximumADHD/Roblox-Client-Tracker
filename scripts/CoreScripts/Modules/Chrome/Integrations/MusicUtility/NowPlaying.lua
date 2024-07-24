--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local NowPlaying = require(CorePackages.Workspace.Packages.NowPlaying)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local GetFFlagEnableChromeMusicIntegration = require(Chrome.Flags.GetFFlagEnableChromeMusicIntegration)
local GetFStringChromeMusicIntegrationNowPlayingLabel =
	require(Chrome.Flags.GetFStringChromeMusicIntegrationNowPlayingLabel)

return if GetFFlagEnableChromeMusicIntegration()
	then ChromeService:register({
		id = "now_playing",
		label = GetFStringChromeMusicIntegrationNowPlayingLabel(),
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		containerWidthSlots = ContainerSlotSignal.new(6),
		components = {
			Container = function()
				return React.createElement(NowPlaying.UnibarNowPlayingWrapper)
			end,
		},
	})
	else nil
