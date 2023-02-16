local CorePackages = game:GetService("CorePackages")
local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)

return {
	Hooks = {
		dependencyArray = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray,
		useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch,
		useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector,
	},
	RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({
		keyPath = "ContactList.Friends",
	}),
	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	UIBlox = require(CorePackages.UIBlox),
	enumerate = require(CorePackages.enumerate),
}
