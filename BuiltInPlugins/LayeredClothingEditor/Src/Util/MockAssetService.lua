local MockAssetService = {}

function MockAssetService:GetBundleDetailsAsync(bundleId)
    return {
        id = bundleId,
        Name = "ROBLOX Boy",
        description = "A free package awarded to new users on sign up.",
        bundleType = "BodyParts",
        Items = {
            {
                owned = true,
                id = 376530220,
                name = "ROBLOX Boy Left Arm",
                type = "Asset"
            },
            {
                owned = true,
                id = 376531012,
                name = "ROBLOX Boy Right Arm",
                type = "Asset"
            },
            {
                owned=true,
                id=376531300,
                name="ROBLOX Boy Left Leg",
                type="Asset"
            },
            {
                owned=true,
                id=376531703,
                name="ROBLOX Boy Right Leg",
                type="Asset"
            },
            {
                owned=true,
                id=376532000,
                name="ROBLOX Boy Torso",
                type="Asset"
            },
            {
                id=131830044,
                name="ROBLOX Boy",
                type="UserOutfit"
            }
        },
        Creator = {
            id = 1,
            name = "Roblox",
            type = "User"
        },
        product = {
            id = 369653750,
            type = "productType",
            isPublicDomain = true,
            isForSale = false,
            priceInRobux = "null",
            isFree = true,
            noPriceText = "Free"
        }
    }
end

return MockAssetService