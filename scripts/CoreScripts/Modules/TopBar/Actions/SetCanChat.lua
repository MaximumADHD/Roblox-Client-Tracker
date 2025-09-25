-- Remove with FFlagTopBarDeprecateChatRodux
local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateChatRodux = require(TopBar.Flags.FFlagTopBarDeprecateChatRodux)

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarDeprecateChatRodux
	then nil :: never
	else Action(script.Name, function(canChat)
		return {
			canChat = canChat,
		}
	end)
