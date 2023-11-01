--!nonstrict
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Roact = require(CorePackages.Roact)
local Promise = require(CorePackages.Promise)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local CoreScriptsRootProvider = require(RobloxGui.Modules.Common.CoreScriptsRootProvider)

local BlockingModalScreen = require(script.Parent.Components.Blocking.BlockingModalScreen)
local GetFFlagWrapBlockModalScreenInProvider = require(RobloxGui.Modules.Flags.GetFFlagWrapBlockModalScreenInProvider)

local PAGE_CONTEXT_NAME = "BlockingModalScreen"

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
		source = source
	})

	unmount()

	local wasModalClosed = false
	local closeModal = function()
		wasModalClosed = true
		unmount()
	end
	local blockingScreen = Roact.createElement(BlockingModalScreen, {
		player = player,
		closeModal = closeModal,
		analytics = analytics,
		translator = (config and config.RobloxTranslator) or RobloxTranslator,
		source = source
	})

	if GetFFlagWrapBlockModalScreenInProvider() then
		local coreScriptsRootProvider = Roact.createElement(CoreScriptsRootProvider, {}, {
			BlockingModalScreen = blockingScreen,
		})
		handle = Roact.mount(coreScriptsRootProvider, RobloxGui, "BlockingContainer")
		ContextActionService:BindCoreAction(PAGE_CONTEXT_NAME, closeModal, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
	else
		handle = Roact.mount(blockingScreen, RobloxGui, "BlockingContainer")
	end
	return Promise.new(function(resolve)
		coroutine.wrap(function()
			while not wasModalClosed do
				wait()
			end
			if GetFFlagWrapBlockModalScreenInProvider() then
				ContextActionService:UnbindCoreAction(PAGE_CONTEXT_NAME)
			end
			resolve()
		end)()
	end)
end
