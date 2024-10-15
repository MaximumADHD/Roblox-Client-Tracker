local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local GetFFlagEnablePeekStaticMusicIconIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePeekStaticMusicIconIntegration

return if GetFFlagEnablePeekStaticMusicIconIntegration()
	then ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "music_icon",
		label = "CoreScripts.TopBar.NowPlaying",
		containerWidthSlots = ContainerSlotSignal.new(1),
		components = {
			Container = function(props)
				return React.createElement(Songbird.MusicIcon)
			end,
		},
	})
	else nil
