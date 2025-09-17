local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local AvatarSwitcherChromeWrapper = require(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherChromeWrapper)
local AvatarSwitcherIcon = require(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherIcon)

local isActive = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen(Constants.AVATAR_SWITCHER_ID)
end)

local MAX_WINDOW_WIDTH = 844
local MAX_WINDOW_HEIGHT = 754

local windowSize = WindowSizeSignal.new(MAX_WINDOW_WIDTH, MAX_WINDOW_HEIGHT)

local integration = ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = Constants.AVATAR_SWITCHER_ID,
	label = "Feature.AvatarSwitcher.Heading.SwitchAvatar",
	activated = function(self)
		ChromeService:toggleWindow(Constants.AVATAR_SWITCHER_ID)
	end,
	isActivated = function()
		return isActive:get()
	end,
	draggable = true,
	windowSize = windowSize,
	components = {
		Icon = function()
			return React.createElement(AvatarSwitcherIcon, {
				isActive = isActive,
			})
		end,

		Window = function()
			return React.createElement(AvatarSwitcherChromeWrapper, {
				windowSize = windowSize,
				maxWindowWidth = MAX_WINDOW_WIDTH,
				maxWindowHeight = MAX_WINDOW_HEIGHT,
			})
		end,
	},
})

return integration
