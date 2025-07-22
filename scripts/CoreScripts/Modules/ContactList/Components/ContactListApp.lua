--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RoactNavigation = require(CorePackages.Packages.RoactNavigation)
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList

local ContactListContainer = require(ContactList.Components.ContactListContainer)
local CallBarContainer = require(ContactList.Components.CallBarContainer)
local CallDialogContainer = require(ContactList.Components.CallDialogContainer)
local PlayerMenuContainer = require(ContactList.Components.PlayerMenuContainer)

return function()
	-- This is a workaround since the PeekView expects to be hosted in a
	-- navigation container. We are not using the navigation here at all,
	-- but could convert to do so.
	local navigator = React.useMemo(function()
		return RoactNavigation.createAppContainer(RoactNavigation.createRobloxStackNavigator({
			{ ["ContactList"] = { screen = ContactListContainer } },
		}, {
			defaultNavigationOptions = {
				absorbInput = false,
			},
		}))
	end, {})

	React.useEffect(function()
		SoundManager:CreateSoundGroup(SoundGroups.Iris.Name)
	end, {})

	return React.createElement("Folder", {}, {
		CallDialogContainer = React.createElement(CallDialogContainer),
		ContactListContainer = React.createElement(navigator),
		PlayerMenuContainer = React.createElement(PlayerMenuContainer),
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
