-- local Root = script.Parent
-- local Packages = Root.Parent

return {
	projects = {
		-- require(Packages.SocialWidgets)["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialWidgets.Squad["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialWidgets.FriendsCarousel["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialWidgets.PYMKCarousel["jest.config"],
	},
}
