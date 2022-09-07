local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local addRawValueMethodToEnum = require(IAPExperienceRoot.Utility.addRawValueMethodToEnum)
local enumerate = require(Packages.enumerate)

local rawKeyToRawValue = {
    --[[ PurchaseErrorType.None
    Default value, will always get ignored
    ]]--
	None = "None",

    --[[ PurchaseErrorType.Unknown
    This error is for when we are unsure what broke. Generic error message
    ]]--
    Unknown = "Unknown",

    --[[ PurchaseErrorType.AlreadyOwn
    The item the user is attempting to purchase is already owned by the given user
    ]]--
    AlreadyOwn = "AlreadyOwn",

    --[[ PurchaseErrorType.FailedGrant
    We determined that the user successfully purchased robux from the given platform
    AND we did not recieve any robux balance updates in time.
    ]]--
    FailedGrant = "FailedGrant",

    --[[ PurchaseErrorType.FailedGrantUnknown
    We are unable to know if the user successfully purchased robux
    AND we did not recieve any robux balance updates in time.
    ]]--
    FailedGrantUnknown = "FailedGrantUnknown",

    --[[ PurchaseErrorType.Limited
    The limited item the user was attempting to purchase is no longer available.
    ]]--
    Limited = "Limited",

    --[[ PurchaseErrorType.NotEnoughRobux
    The user attempted to purchase an item where the delta between their balance and needed robux amount
    IS to large for our largest pacakge to fulfill.
    ]]--
    NotEnoughRobux = "NotEnoughRobux",

    --[[ PurchaseErrorType.NotForSale
    The item is not on sale to be purchased
    ]]--
    NotForSale = "NotForSale",

    --[[ PurchaseErrorType.NotForSaleExperience
    The item is not setup to be sold in the given experience. See asset location ssale restrictions
    ]]--
    NotForSaleExperience = "NotForSaleExperience",

    --[[ PurchaseErrorType.PremiumOnly
    This item is only available for premium users and the user is not premium.
    ]]--
    PremiumOnly = "PremiumOnly",

    --[[ PurchaseErrorType.ThirdPartyDisabled
    Third party sales is disabled for the given experience.
    ]]--
    ThirdPartyDisabled = "ThirdPartyDisabled",

    --[[ PurchaseErrorType.Under13
    The user is unable to purchase the item because they are under 13 and the item is restricted.
    ]]--
    Under13 = "Under13",
}

-- The values here correspond to values in the requested web view.
local PurchaseErrorType = enumerate(script.Name, rawKeyToRawValue)

-- Add a `toRawValue` serialization method for request purposes.
addRawValueMethodToEnum(PurchaseErrorType, rawKeyToRawValue)

return PurchaseErrorType
