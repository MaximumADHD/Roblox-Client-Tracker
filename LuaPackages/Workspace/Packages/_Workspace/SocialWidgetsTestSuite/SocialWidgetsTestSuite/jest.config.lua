local Root = script.Parent
local Packages = Root.Parent

return {
	projects = {
		require(Packages.Squads)["jest.config"],
		require(Packages.FriendsCarousel)["jest.config"],
		require(Packages.PYMKCarousel)["jest.config"],
	} :: { ModuleScript },
}
