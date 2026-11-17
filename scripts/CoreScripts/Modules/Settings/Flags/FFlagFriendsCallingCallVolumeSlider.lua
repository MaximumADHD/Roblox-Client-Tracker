local CorePackages = game:GetService("CorePackages")
local FFlagFriendsCallingClientGate_DEV =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagFriendsCallingClientGate_DEV

return game:DefineFastFlag("FriendsCallingCallVolumeSlider", false) and FFlagFriendsCallingClientGate_DEV
