--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList

local ContactListContainer = require(ContactList.Components.ContactListContainer)
local CallBarContainer = require(ContactList.Components.CallBarContainer)
local CallDialogContainer = require(ContactList.Components.CallDialogContainer)
local PlayerMenuContainer = require(ContactList.Components.PlayerMenuContainer)

return function()
	React.useEffect(function()
		SoundManager:CreateSoundGroup(SoundGroups.Iris.Name)
	end, {})

	return React.createElement("Folder", {}, {
		CallDialogContainer = React.createElement(CallDialogContainer),
		ContactListContainer = React.createElement(ContactListContainer),
		PlayerMenuContainer = React.createElement(PlayerMenuContainer),
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
