local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)

local CapturesPolicy = require(CorePackages.Workspace.Packages.CapturesInExperience).CapturesPolicy
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagFixSpatialUICaptures = SharedFlags.FFlagFixSpatialUICaptures
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local policy = CapturesPolicy.PolicyImplementation.read()
local eligibleForCapturesFeature = if policy then CapturesPolicy.Mapper(policy).eligibleForCapturesFeature() else false
local enableSpatialUICapturesFix = isInExperienceUIVREnabled and FFlagFixSpatialUICaptures
local available = eligibleForCapturesFeature and (if enableSpatialUICapturesFix then not isSpatial() else true)

if not available then
	return nil :: any
end

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("CapturesPage")

return ChromeService:register({
	initialAvailability = if available
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	id = "gallery",
	label = "Feature.Captures.Title.Gallery",
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("CapturesPage", pageOpenSignal:get())
	end,
	isActivated = if FFlagChromeActivatedMappedSignal
		then pageOpenSignal
		else function()
			return pageOpenSignal:get()
		end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/controls/cameraOff", "icons/controls/cameraOn", pageOpenSignal)
		end,
	},
})
