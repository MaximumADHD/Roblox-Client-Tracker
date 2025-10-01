local CorePackages = game:GetService("CorePackages")
local SocialService = game:GetService("SocialService")

local ExternalContentSharingProtocol =
	require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local isContentSharingAllowed = CachedPolicyService:IsContentSharingAllowed()

local PolicyProvider = require(CorePackages.Packages.PolicyProvider)
local AppPolicyImplementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")

local FFlagDifferentiateSharingBaseOnPlatform = game:DefineFastFlag("DifferentiateSharingBaseOnPlatform", false)

local isShareSheetSupported = false
if FFlagDifferentiateSharingBaseOnPlatform then
	local policy = AppPolicyImplementation.read()
	isShareSheetSupported = policy and policy.EnableShareCaptureCTA and policy.EligibleForCapturesFeature or false
end

SocialService.OpenShareSheetWithLink:Connect(function(link: string)
	if not ExternalContentSharingProtocol then
		return
	end

	assert(ExternalContentSharingProtocol ~= nil, "ExternalContentSharingProtocol is required")
	if FFlagDifferentiateSharingBaseOnPlatform then 
		if not isShareSheetSupported then
			ExternalContentSharingProtocol:setClipboardText({
				context = "PromptLinkSharing",
				text = link,
			})
			return
		end
	else
		if not isContentSharingAllowed then
			ExternalContentSharingProtocol:setClipboardText({
				context = "PromptLinkSharing",
				text = link,
			})
			return
		end
	end

	ExternalContentSharingProtocol:shareUrl({
		context = "PromptLinkSharing",
		url = link,
	})
end)
