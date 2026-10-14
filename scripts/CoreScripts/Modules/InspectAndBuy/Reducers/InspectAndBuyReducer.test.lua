local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local Reducer = require(script.Parent.InspectAndBuyReducer)
local InspectAndBuyFolder = script.Parent.Parent
local FFlagAXEnableFetchAvatarPreview = require(InspectAndBuyFolder.Flags.FFlagAXEnableFetchAvatarPreview)

it("has the expected fields, and only the expected fields", function()
	local state = Reducer(nil, {})

	local expectedKeys = {
		view = true,
		playerId = true,
		playerName = true,
		assets = true,
		assetBundles = true,
		bundles = true,
		equippedAssets = true,
		detailsInformation = true,
		tryingOnInfo = true,
		favorites = true,
		locale = true,
		visible = true,
		itemBeingPurchased = true,
		gamepadEnabled = true,
		isLoaded = true,
		isSubjectToChinaPolicies = true,
		FetchingStatus = true,
		storeId = true,
		collectibleResellableInstances = true,
		creatingExperiences = true,
		overlay = true,
		avatarPreviewDetails = if FFlagAXEnableFetchAvatarPreview then true else nil,
	}

	for key in pairs(expectedKeys) do
		assert(state[key] ~= nil, string.format("Expected field %q", key))
	end

	for key in pairs(state) do
		assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
	end
end)
