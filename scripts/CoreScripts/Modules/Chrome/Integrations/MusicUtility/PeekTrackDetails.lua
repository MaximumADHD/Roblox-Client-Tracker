--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local Constants = require(script.Parent.Constants)
local shouldUseSmallPeek = require(script.Parent.shouldUseSmallPeek)

local GetFFlagPeekShowsOneSongOverLifetime =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekShowsOneSongOverLifetime
local GetFFlagPeekSizeConstraints = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekSizeConstraints

return if GetFFlagPeekShowsOneSongOverLifetime()
	then ChromeService:register({
		id = "peek_track_details",
		label = "CoreScripts.TopBar.NowPlaying",
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
				return React.createElement(Songbird.PeekTrackDetailsWrapper)
			end,
		},
	})
	else nil
