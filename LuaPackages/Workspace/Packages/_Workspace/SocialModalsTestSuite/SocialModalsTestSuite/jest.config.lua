local Root = script.Parent
local Packages = Root.Parent

return {
	projects = {
		require(Packages.SocialModalsCommon)["jest.config"],
		require(Packages.ContactImporter)["jest.config"],
		require(Packages.DiscoverabilityModal)["jest.config"],
		require(Packages.InviteLinkExpiredModal)["jest.config"],
		require(Packages.MessageToast)["jest.config"],
		require(Packages.ShareLinkInvalidModal)["jest.config"],
		require(Packages.Squads)["jest.config"],
		require(Packages.SetAlias)["jest.config"],
	} :: { ModuleScript },
}
