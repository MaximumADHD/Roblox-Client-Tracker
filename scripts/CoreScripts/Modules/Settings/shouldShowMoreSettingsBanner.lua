--[[
	Decides whether the "more settings are available" banner should be shown.
	This yields because the AMP-backed availability lookup it delegates to yields.
]]

local CorePackages = game:GetService("CorePackages")

local defaultIsPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch

local AccessResponseEnum

local function getAccessResponseEnum()
	local accessResponseEnum = AccessResponseEnum
	if accessResponseEnum then
		return accessResponseEnum
	end

	accessResponseEnum = require(CorePackages.Workspace.Packages.AccountUpgrade.Eligibility).AccessResponseEnum
	AccessResponseEnum = accessResponseEnum
	return accessResponseEnum
end

export type Availability = {
	granted: boolean,
	access: string,
}

local function defaultGetAvailability(): Availability
	local Eligibility = require(CorePackages.Workspace.Packages.AccountUpgrade.Eligibility)
	local AccountUpgradeFlow = require(CorePackages.Workspace.Packages.AccountUpgrade.AccountUpgradeFlow)
	return Eligibility.getAvailability(AccountUpgradeFlow.Pioneer)
end

local cachedAvailability: { [() -> Availability]: Availability } = setmetatable({}, { __mode = "k" }) :: any

local function getAvailabilityOnce(getAvailability: () -> Availability): Availability
	local cached = cachedAvailability[getAvailability]
	if cached then
		return cached
	end

	local availability = getAvailability()
	-- Granted is not cached so an in-session Express → full-account upgrade can show the banner.
	if availability.access == getAccessResponseEnum().Denied then
		cachedAvailability[getAvailability] = availability
	end

	return availability
end

local function shouldShowMoreSettingsBanner(
	isPioneerLaunch: (() -> boolean)?,
	getAvailability: (() -> Availability)?
): boolean
	local isPioneer = isPioneerLaunch or defaultIsPioneerLaunch
	if not isPioneer() then
		return false
	end

	local availability = getAvailabilityOnce(getAvailability or defaultGetAvailability)

	return availability.access == getAccessResponseEnum().Denied
end

return shouldShowMoreSettingsBanner
