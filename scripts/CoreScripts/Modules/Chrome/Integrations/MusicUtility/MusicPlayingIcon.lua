local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)

local GetFFlagEnableChromeMusicPlayingIconIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeMusicPlayingIconIntegration

return if GetFFlagEnableChromeMusicPlayingIconIntegration()
	then ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "music_playing_icon",
		label = "CoreScripts.TopBar.NowPlaying",
		components = {
			Icon = function(props)
				return React.createElement(Songbird.MusicPlayingIcon)
			end,
		},
	})
	else nil
