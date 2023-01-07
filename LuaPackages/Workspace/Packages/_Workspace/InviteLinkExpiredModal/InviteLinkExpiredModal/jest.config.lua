local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")
local Packages = InviteLinkExpiredModal.Parent
local JestConfigs = require(Packages.Dev.JestConfigs)

return {
	displayName = "InviteLinkExpiredModal",
	testMatch = { "**/*.test" },
	setupFilesAfterEnv = {
		JestConfigs.setupFiles.LogHandler,
		JestConfigs.setupFiles.UIBloxInitializer,
		JestConfigs.setupFiles.createPromiseRejectionHandler(),
		script.Parent.NetworkImplHandler,
	},
}
