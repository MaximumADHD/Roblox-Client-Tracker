--!strict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ContainerSlotSignal = require(Chrome.Service.ContainerSlotSignal)

local GetFFlagEnableChromeMusicIntegration = require(Chrome.Flags.GetFFlagEnableChromeMusicIntegration)
local GetFStringChromeMusicIntegrationUtilityLabel = require(Chrome.Flags.GetFStringChromeMusicIntegrationUtilityLabel)
local GetFStringChromeMusicIntegrationId = require(Chrome.Flags.GetFStringChromeMusicIntegrationId)

return if GetFFlagEnableChromeMusicIntegration()
	then ChromeService:register({
		id = GetFStringChromeMusicIntegrationId(),
		label = GetFStringChromeMusicIntegrationUtilityLabel(),
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		containerWidthSlots = ContainerSlotSignal.new(6),
		components = {
			Container = function()
				return React.createElement(Songbird.UnibarSongbirdWrapper)
			end,
		},
	})
	else nil
