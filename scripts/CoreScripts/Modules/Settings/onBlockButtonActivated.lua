--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local Promise = require(CorePackages.Packages.Promise)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local BlockingAnalytics = require(script.Parent.Analytics.BlockingAnalytics)
local BlockingModalScreen = require(script.Parent.Components.Blocking.BlockingModalScreen)

local FFlagNavigateToBlockingModal = require(RobloxGui.Modules.Common.Flags.FFlagNavigateToBlockingModal)
local FFlagEnableNewBlockingModal = require(RobloxGui.Modules.Common.Flags.FFlagEnableNewBlockingModal)
local FFlagEnableToastForBlockingModal = require(RobloxGui.Modules.Common.Flags.FFlagEnableToastForBlockingModal)
local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav

local PAGE_CONTEXT_NAME = "BlockingModalScreen"

local handle

local unmount = function()
	if handle ~= nil then
		Roact.unmount(handle)
		handle = nil
		if FFlagEnableToastForBlockingModal then
			ContextActionService:UnbindCoreAction(PAGE_CONTEXT_NAME)
		end
	end
end

if FFlagEnableToastForBlockingModal then
	return function(player, analytics, source, config)
		return Promise.new(function(resolve)
			local blockingAnalytics

			if FFlagNavigateToBlockingModal then
				blockingAnalytics = analytics or BlockingAnalytics.new()
				blockingAnalytics:action("SettingsHub", "blockUserButtonClick", {
					blockeeUserId = player.UserId,
					source = source,
				})
			else
				analytics:action("SettingsHub", "blockUserButtonClick", {
					blockeeUserId = player.UserId,
					source = source,
				})
			end

			unmount()

			local closeModal = function()
				unmount()
				resolve()
				if FFlagAddNewPlayerListMobileFocusNav then
					GuiService.SelectedCoreObject = nil
				end
			end

			local blockingScreen = Roact.createElement(BlockingModalScreen, {
				player = player,
				closeModal = closeModal,
				analytics = if FFlagNavigateToBlockingModal then blockingAnalytics else analytics,
				translator = if FFlagEnableNewBlockingModal then nil else (config and config.RobloxTranslator) or RobloxTranslator,
				source = source,
				onBlockingSuccess = if FFlagNavigateToBlockingModal then config and config.onBlockingSuccess or nil else nil
			})

			local coreScriptsRootProvider = Roact.createElement(CoreScriptsRootProvider, {}, {
				BlockingModalScreen = blockingScreen,
			})
			handle = Roact.mount(coreScriptsRootProvider, RobloxGui, "BlockingContainer")
			ContextActionService:BindCoreAction(
				PAGE_CONTEXT_NAME,
				closeModal,
				false,
				Enum.KeyCode.ButtonB,
				Enum.KeyCode.Escape
			)
		end)
	end
else
	return function(player, analytics, source, config)
		local blockingAnalytics

		if FFlagNavigateToBlockingModal then
			blockingAnalytics = analytics or BlockingAnalytics.new()
			blockingAnalytics:action("SettingsHub", "blockUserButtonClick", {
				blockeeUserId = player.UserId,
				source = source,
			})
		else
			analytics:action("SettingsHub", "blockUserButtonClick", {
				blockeeUserId = player.UserId,
				source = source,
			})
		end

		unmount()

		local wasModalClosed = false
		local closeModal = function()
			wasModalClosed = true
			unmount()
		end
		local blockingScreen = Roact.createElement(BlockingModalScreen, {
			player = player,
			closeModal = closeModal,
			analytics = if FFlagNavigateToBlockingModal then blockingAnalytics else analytics,
			translator = if FFlagEnableNewBlockingModal then nil else (config and config.RobloxTranslator) or RobloxTranslator,
			source = source,
			onBlockingSuccess = if FFlagNavigateToBlockingModal then config and config.onBlockingSuccess or nil else nil
		})

		local coreScriptsRootProvider = Roact.createElement(CoreScriptsRootProvider, {}, {
			BlockingModalScreen = blockingScreen,
		})
		handle = Roact.mount(coreScriptsRootProvider, RobloxGui, "BlockingContainer")
		ContextActionService:BindCoreAction(
			PAGE_CONTEXT_NAME,
			closeModal,
			false,
			Enum.KeyCode.ButtonB,
			Enum.KeyCode.Escape
		)

		return Promise.new(function(resolve)
			coroutine.wrap(function()
				while not wasModalClosed do
					wait()
				end
				ContextActionService:UnbindCoreAction(PAGE_CONTEXT_NAME)
				resolve()
			end)()
		end)
	end
end
