local CorePackages = game:GetService("CorePackages")
local PolicyService = game:GetService("PolicyService")
local Players = game:GetService("Players")
local SocialService = game:GetService("SocialService")

local ExternalContentSharingProtocol =
	require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local isContentSharingAllowed = CachedPolicyService:IsContentSharingAllowed()

SocialService.OpenShareSheetWithLink:Connect(function(link: string)
    if not ExternalContentSharingProtocol then
        return
    end

    assert(ExternalContentSharingProtocol ~= nil, "ExternalContentSharingProtocol is required")
    if not isContentSharingAllowed then
        ExternalContentSharingProtocol:setClipboardText({
            context = "PromptLinkSharing",
            text = link,
        })
        return
    end

    ExternalContentSharingProtocol:shareUrl({
        context = "PromptLinkSharing",
        url = link,
    })
end)