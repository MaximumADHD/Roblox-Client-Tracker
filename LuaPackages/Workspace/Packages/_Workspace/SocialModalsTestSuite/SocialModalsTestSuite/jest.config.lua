local Root = script.Parent
local Packages = Root.Parent

return {
	projects = {
		require(Packages.SocialModalsCommon)["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.ContactImporter["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.DiscoverabilityModal["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.InviteLinkExpiredModal["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.MessageToast["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.ShareLinkInvalidModal["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.Squads["jest.config"],
		(game :: any).CoreGui.RobloxGui.Modules.SocialModals.SetAlias["jest.config"],
	},
}
