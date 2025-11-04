local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local React = require(CorePackages.Packages.React)
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local AvatarSwitcherChromeWrapper = require(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherChromeWrapper)
local AvatarSwitcherIcon = require(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherIcon)
local Url = require(CorePackages.Workspace.Packages.Http).Url

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeWindowSignalConstraintsToggle = SharedFlags.FFlagChromeWindowSignalConstraintsToggle
local FFlagRemoveAvatarSwitcherIfUnsupported = SharedFlags.FFlagRemoveAvatarSwitcherIfUnsupported

local isActive = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen(Constants.AVATAR_SWITCHER_ID)
end)

local MAX_WINDOW_WIDTH = 844
local MAX_WINDOW_HEIGHT = 754
local AVATAR_SUPPORT_TYPE_URL = if FFlagRemoveAvatarSwitcherIfUnsupported
	then Url.AVATAR_URL .. "v2/avatar/experience/get-experience-avatar-support"
	else nil

local windowSize = if FFlagChromeWindowSignalConstraintsToggle
	then WindowSizeSignal.new(MAX_WINDOW_WIDTH, MAX_WINDOW_HEIGHT, false, true)
	else WindowSizeSignal.new(MAX_WINDOW_WIDTH, MAX_WINDOW_HEIGHT, false)

local integration = ChromeService:register({
	initialAvailability = if FFlagRemoveAvatarSwitcherIfUnsupported
		then ChromeService.AvailabilitySignal.Unavailable
		else ChromeService.AvailabilitySignal.Available,
	id = Constants.AVATAR_SWITCHER_ID,
	label = "Feature.AvatarSwitcher.Heading.SwitchAvatar",
	activated = function(self)
		ChromeService:toggleWindow(Constants.AVATAR_SWITCHER_ID)
	end,
	isActivated = function()
		return isActive:get()
	end,
	cachePosition = true,
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

if FFlagRemoveAvatarSwitcherIfUnsupported then
	-- Check if this experience supports avatars, and re-enable avatar switcher accordingly
	task.spawn(function()
		-- Wait until the game loads, to avoid bloating game join time with this API call
		if not game:IsLoaded() then
			game.Loaded:Wait()
		end

		local success, result = pcall(function()
			local response = HttpRbxApiService:GetAsyncFullUrl(AVATAR_SUPPORT_TYPE_URL)
			return HttpService:JSONDecode(response)
		end)

		-- If the experience is detected to have partial or full avatar support (experienceAvatarSupportType ~= 0),
		-- re-enable the avatar switcher integration
		if success and result and result.experienceAvatarSupportType ~= 0 then
			integration.availability:available()
		end
	end)
end

return integration
