--!nonstrict
local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Packages.Promise)

-- Cache this here for convenience so if we get the result for the HumanoidViewport we can use it again for
-- calling PerformSaveAvatar/PerformCreateOutfit without needing to pass it through the store.
local lastHumanoidDescription = nil
local lastConformedDescription = nil

-- We want to show the default clothing on the Avatar in the viewport but we can't pass this to the web
-- when actually saving the avatar.
local function removeDefaultClothing(humanoidDescription, resolve, reject)
	local avatarRules
	-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
	-- Will be removed when that PR is merged.
	if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
		avatarRules = (AvatarEditorService :: any):GetAvatarRulesAsync()
	else
		avatarRules = (AvatarEditorService :: any):GetAvatarRules()
	end

	if not avatarRules.DefaultClothingAssetLists then
		reject("No default clothing in avatar rules")
		return
	end

	local defaultShirtIds = avatarRules.DefaultClothingAssetLists.DefaultShirtAssetIds
	local defaultPantsIds = avatarRules.DefaultClothingAssetLists.DefaultPantAssetIds

	if (not defaultShirtIds) or not defaultPantsIds then
		reject("No default clothing ids in avatar rules")
		return
	end

	local newHumanoidDescription
	for _, shirtId in ipairs(defaultShirtIds) do
		if shirtId == humanoidDescription.Shirt then
			newHumanoidDescription = newHumanoidDescription or humanoidDescription:Clone()
			newHumanoidDescription.Shirt = 0
		end
	end

	for _, pantsId in ipairs(defaultPantsIds) do
		if pantsId == humanoidDescription.Pants then
			newHumanoidDescription = newHumanoidDescription or humanoidDescription:Clone()
			newHumanoidDescription.Pants = 0
		end
	end

	resolve(newHumanoidDescription or humanoidDescription)
end

local function GetConformedHumanoidDescription(humanoidDescription, includeDefaultClothing)
	if humanoidDescription == lastHumanoidDescription then
		if includeDefaultClothing then
			return Promise.resolve(lastConformedDescription)
		else
			return Promise.new(function(resolve, reject)
				removeDefaultClothing(lastConformedDescription, resolve, reject)
			end)
		end
	end

	return Promise.new(function(resolve, reject)
		coroutine.wrap(function()
			local success, result = pcall(function()
				-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
				-- Will be removed when that PR is merged.
				if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
					return (AvatarEditorService :: any):ConformToAvatarRulesAsync(humanoidDescription)
				else
					return (AvatarEditorService :: any):ConformToAvatarRules(humanoidDescription)
				end
			end)

			if success then
				lastHumanoidDescription = humanoidDescription
				lastConformedDescription = result

				if includeDefaultClothing then
					resolve(result)
				else
					removeDefaultClothing(result, resolve, reject)
				end
			else
				reject(result)
			end
		end)()
	end)
end

return GetConformedHumanoidDescription
