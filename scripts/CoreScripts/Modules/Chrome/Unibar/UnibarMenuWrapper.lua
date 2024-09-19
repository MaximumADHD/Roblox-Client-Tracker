local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ReactUtils = require(CorePackages.Workspace.Packages.ReactUtils)
local React = require(CorePackages.Packages.React)
local UnibarMenu = require(script.Parent.UnibarMenu)
local UIBlox = require(CorePackages.UIBlox)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local function UnibarMenuWrapper(props: UnibarMenu.UnibarMenuProp)
	return React.createElement(ReactUtils.ContextStack, {
		providers = {
			React.createElement(VoiceStateContext.Provider),
			React.createElement(SelectionCursorProvider),
		},
	}, {
		UnibarMenu = React.createElement(UnibarMenu, props),
	})
end

return UnibarMenuWrapper
