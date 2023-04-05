local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local RecordingIndicator = require(script.Parent.RecordingIndicator)
local FFlagAvatarChatCoreScriptSupport = require(Modules.Flags.FFlagAvatarChatCoreScriptSupport)

return function()
	if FFlagAvatarChatCoreScriptSupport then
		it("should mount and unmount without errors", function()
			local element = Roact.createElement(RecordingIndicator, {
				micOn = true,
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end
end
