--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Roact = require(CorePackages.Roact)
local Promise = require(CorePackages.Promise)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local BlockingModalScreen = require(script.Parent.Components.Blocking.BlockingModalScreen)
local GetFFlagEnableBlockAnalyticsSource = require(RobloxGui.Modules.Flags.GetFFlagEnableBlockAnalyticsSource)

local handle
local unmount = function()
	if handle ~= nil then
		Roact.unmount(handle)
		handle = nil
	end
end

return function(player, analytics, source, config)
	analytics:action("SettingsHub", "blockUserButtonClick", {
		blockeeUserId = player.UserId,
		source = if GetFFlagEnableBlockAnalyticsSource() then source else nil,
	})

	unmount()

	local wasModalClosed = false
	local blockingScreen = Roact.createElement(BlockingModalScreen, {
		player = player,
		closeModal = function()
			wasModalClosed = true
			unmount()
		end,
		analytics = analytics,
		translator = (config and config.RobloxTranslator) or RobloxTranslator,
		source = if GetFFlagEnableBlockAnalyticsSource() then source else nil,
	})

	handle = Roact.mount(blockingScreen, RobloxGui, "BlockingContainer")

	return Promise.new(function(resolve)
		coroutine.wrap(function()
			while not wasModalClosed do
				wait()
			end
			resolve()
		end)()
	end)
end
