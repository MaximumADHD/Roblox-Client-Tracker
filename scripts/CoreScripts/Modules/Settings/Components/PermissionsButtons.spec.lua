local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local PermissionsButtons = require(script.Parent.PermissionsButtons)
local FFlagAvatarChatCoreScriptSupport = require(Modules.Flags.FFlagAvatarChatCoreScriptSupport)

return function()
	if FFlagAvatarChatCoreScriptSupport then
		it("should mount and unmount without errors", function()
			local element = Roact.createElement(PermissionsButtons, {
				isPortrait = true,
				isSmallTouchScreen = true,
				isTenFootInterface = false,
				ZIndex = -1,
				LayoutOrder = 1,
				shouldFillScreen = true,
				selfViewOpen = true,
				useNewMenuTheme = false,
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end
end
