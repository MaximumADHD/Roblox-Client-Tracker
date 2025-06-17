
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local Root = script.Parent.Parent

local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper

local SetABVariation = require(Root.Actions.SetABVariation)

local FFlagNewUpsellModalDesktop = game:DefineFastFlag("NewUpsellModalDesktop", false)
local FStringDesktopUpsellIXPLayer = game:DefineFastString("DesktopUpsellIXPLayer", "Payments.Optimization.InExperienceUpsell.Desktop.UI")

local ABVariationKey = "DesktopUpsellExpVariant"

local variants = {
	Control = "control" :: string,
	OpenRobuxStore = "openRobuxStore" :: string,
	OpenPaymentsPage = "openPaymentsPage" :: string,
}

local function ixpVariantToEnum(variant: number)
	if variant == 0 then
		return variants.Control
	elseif variant == 1 then
		return variants.OpenRobuxStore
	elseif variant == 2 then
		return variants.OpenPaymentsPage
	else
		error("Invalid variant: " .. variant) -- Should never happen
	end
end

local function determineVariant(store)
	-- If flag is off, no-op
	if not FFlagNewUpsellModalDesktop then
		return
	end

    -- If experiment is off or not set, return control behavior
	local layerData = IXPServiceWrapper:GetLayerData(FStringDesktopUpsellIXPLayer)
	if not layerData or layerData.newUpsellModalVariant == nil then
		return
	end

	-- Store the variant in the state so we can use it in the UI and various scripts
	store:dispatch(SetABVariation(ABVariationKey, ixpVariantToEnum(layerData.newUpsellModalVariant)))
end

local function logExposure()
	-- If flag is off, no-op
	if not FFlagNewUpsellModalDesktop then
		return
	end
	IXPServiceWrapper:LogUserLayerExposure(FStringDesktopUpsellIXPLayer)
end


return {
	variants = variants,
	determineVariant = determineVariant,
	logExposure = logExposure,
}