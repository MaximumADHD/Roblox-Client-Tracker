local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local isConnectDropdownEnabled = require(script.Parent.isConnectDropdownEnabled)

local GetFFlagEnableAppChatInExperience =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local GetFFlagAppChatAddConnectUnibarForActiveSquad =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad
local GetShouldShowPlatformChatBasedOnPolicy = require(Chrome.Flags.GetShouldShowPlatformChatBasedOnPolicy)

local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

return function()
	-- AppChat Unibar EntryPoint enabled, "connect_unibar" shared by AppChat and Party
	-- with active party: share the same "connect_unibar" icon ("connect_unibar" icon always pinned)
	-- no active party: "connect_unibar" icon is AppChat entrypoint ("connect_unibar" icon always pinned)
	local isAppChatUnibarEntryPointEnabled = GetFFlagEnableAppChatInExperience()
		and InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
		and GetShouldShowPlatformChatBasedOnPolicy()

	-- AppChat Unibar Dropdown enabled, "connect_unibar" solely used by Party
	-- with active party: pin "connect_unibar" icon
	-- no active party: hide "connect_unibar" icon
	local isAppChatDropdownEntryPointEnabled = isConnectDropdownEnabled()

	return isAppChatUnibarEntryPointEnabled
		or (
			isAppChatDropdownEntryPointEnabled
			and GetFFlagAppChatAddConnectUnibarForActiveSquad()
			and GetFFlagIsSquadEnabled()
		)
end
