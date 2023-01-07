local FriendsCarousel = script.Parent
local Packages = FriendsCarousel.Parent
local JestConfigs = require(Packages.Dev.JestConfigs)

return {
	displayName = "SocialWidgets-FriendsCarousel",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
		script.Parent.FlagAndNetworkImplHandler,
	},
}
