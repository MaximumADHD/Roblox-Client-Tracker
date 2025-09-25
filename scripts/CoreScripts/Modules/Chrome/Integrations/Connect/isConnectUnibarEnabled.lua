local CorePackages = game:GetService("CorePackages")

local isConnectDropdownEnabled = require(script.Parent.isConnectDropdownEnabled)
local GetFFlagAppChatAddConnectUnibarForActiveSquad =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

return function()
	-- AppChat Unibar Dropdown enabled, "connect_unibar" solely used by Party
	-- with active party: pin "connect_unibar" icon
	-- no active party: hide "connect_unibar" icon
	local isAppChatDropdownEntryPointEnabled = isConnectDropdownEnabled()

	return isAppChatDropdownEntryPointEnabled
		and GetFFlagAppChatAddConnectUnibarForActiveSquad()
		and GetFFlagIsSquadEnabled()
end
