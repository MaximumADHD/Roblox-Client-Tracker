--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local GetFFlagPeekShowsOneSongOverLifetime =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekShowsOneSongOverLifetime

return if GetFFlagPeekShowsOneSongOverLifetime()
	then ChromeService:register({
		id = "peek_track_details",
		label = "CoreScripts.TopBar.NowPlaying",
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		containerWidthSlots = ContainerSlotSignal.new(6),
		components = {
			Container = function()
				return React.createElement(Songbird.PeekTrackDetailsWrapper)
			end,
		},
	})
	else nil
