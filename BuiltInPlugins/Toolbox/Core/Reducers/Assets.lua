local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Immutable = require(Plugin.Core.Util.Immutable)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local GetAssets = require(Plugin.Core.Actions.GetAssets)
local SetLoading = require(Plugin.Core.Actions.SetLoading)

local function handleAssetsAddedToState(state, assets, totalAssets)
	if not assets then
		if DebugFlags.shouldDebugWarnings() then
			warn("Lua Toolbox: handleAssetsAddedToState() got assets = nil")
		end
		return state
	end

	local newIdToAssetMap = {}
	local newIdsToRender = {}

	for _, asset in ipairs(assets) do
		local id = asset.Asset.Id

		newIdToAssetMap[id] = Immutable.RemoveFromDictionary(asset, "Voting")
		newIdsToRender[#newIdsToRender + 1] = id
	end

	-- Use math.max because sometimes the endpoint returns TotalAssets = 0 even if there results
	local newTotalAssets = math.max(state.totalAssets or 0, totalAssets or 0)
	local newAssetsReceived = (state.assetsReceived or 0) + #newIdsToRender
	local newHasReachedBottom = state.hasReachedBottom or (newAssetsReceived >= newTotalAssets)
		or (#newIdsToRender == 0 and newTotalAssets > 0)

	return Immutable.JoinDictionaries(state, {
		idToAssetMap = Immutable.JoinDictionaries(state.idToAssetMap or {}, newIdToAssetMap),
		idsToRender = Immutable.JoinLists(state.idsToRender or {}, newIdsToRender),

		totalAssets = newTotalAssets,
		assetsReceived = newAssetsReceived,
		hasReachedBottom = newHasReachedBottom,
	})
end

return function(state, action)
	state = state or {
		idToAssetMap = {},
		idsToRender = {},
		isLoading = false,

		totalAssets = 0,
		assetsReceived = 0,
		hasReachedBottom = false,
	}

	if action.type == ClearAssets.name then
		return Immutable.JoinDictionaries(state, {
			idsToRender = {},
			totalAssets = 0,
			assetsReceived = 0,
			hasReachedBottom = false,
		})

	elseif action.type == SetLoading.name then
		return Immutable.JoinDictionaries(state, {
			isLoading = action.isLoading,
		})

	elseif action.type == GetAssets.name then
		return handleAssetsAddedToState(state, action.assets, action.totalResults)
	end

	return state
end
