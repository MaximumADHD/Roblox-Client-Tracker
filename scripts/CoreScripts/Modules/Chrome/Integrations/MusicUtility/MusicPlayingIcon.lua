local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local GetFFlagEnableChromeMusicPlayingIconIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeMusicPlayingIconIntegration
local GetFFlagPeekSizeConstraints = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekSizeConstraints

return if GetFFlagEnableChromeMusicPlayingIconIntegration()
	then ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "music_playing_icon",
		label = "CoreScripts.TopBar.NowPlaying",
		containerWidthSlots = if GetFFlagPeekSizeConstraints() then ContainerSlotSignal.new(1) else nil,
		components = {
			Container = GetFFlagPeekSizeConstraints() and function(props)
				return React.createElement(Songbird.MusicPlayingIcon)
			end,
			Icon = not GetFFlagPeekSizeConstraints() and function(props)
				return React.createElement(Songbird.MusicPlayingIcon)
			end,
		},
	})
	else nil
