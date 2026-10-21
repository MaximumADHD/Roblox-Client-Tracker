--[[
	RCC can't download drafts (two-stage publishing), so DescendantIdsPublished checks for them before validation
	downloads anything. The legacy entrypoints download first, so once that check is enforced, a failed server-side
	download returns a failure instead of throwing, and the check that runs next reports any draft.
]]

local root = script.Parent.Parent

local APIUtil = require(root.util.APIUtil)
local Types = require(root.util.Types)
local getFFlagUGCValidateDescendantIdsPublished = require(root.flags.getFFlagUGCValidateDescendantIdsPublished)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local ASSETS_URL = `https://apis.{APIUtil.getBaseDomain()}assets/rcc/v1/assets/`

local UnpublishedDependencies = {}

-- A version of an asset from the assets-upload-api RCC routes: the pinned one, or else the latest, drafts included.
-- Each route is read once, because APIUtil's retries wait(), which can hang an RCC job. Tests replace this.
function UnpublishedDependencies.getVersion(assetId: string, version: number?): any
	local versionNumber = version
		or HttpService:JSONDecode(HttpRbxApiService:GetAsyncFullUrl(ASSETS_URL .. assetId)).revisionId
	return HttpService:JSONDecode(HttpRbxApiService:GetAsyncFullUrl(`{ASSETS_URL}{assetId}/versions/{versionNumber}`))
end

-- Whether a legacy entrypoint whose download failed on the server returns a failure instead of throwing. In-experience
-- uploads still throw.
function UnpublishedDependencies.shouldReturnOnLoadFailure(validationContext: Types.ValidationContext): boolean
	return getFFlagUGCValidateDescendantIdsPublished()
		and validationContext.universeId == nil
		and validationContext.token == nil
		and not validationContext.allowEditableInstances
end

return UnpublishedDependencies
