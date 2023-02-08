local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local Array = require(Packages.LuauPolyfill).Array
local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

local GetFFlagEnableMergeOmniFeedSorts = require(script.Parent.Parent.Flags).GetFFlagEnableMergeOmniFeedSorts

local function mergeSorts(_self, existingItems, incomingItems)
	existingItems = existingItems or {}
	incomingItems = incomingItems or {}
	if #incomingItems == 0 then
		return existingItems
	end
	if #existingItems == 0 then
		return incomingItems
	end

	return Array.concat(table.clone(existingItems), incomingItems)
end

return {
	--[[
		omniSessionId is returned from the omni-recommendations endpoint and acts as
		the identifier for the omni feed being rendered.
	]]
	keyFields = { "omniSessionId" },
	fields = {
		sorts = {
			-- replaces the isAppend behavior in OrderedOmniItems
			merge = if GetFFlagEnableMergeOmniFeedSorts() then mergeSorts else nil,
		},
		nextPageToken = {
			read = makeDefaultReadPolicy(""),
		},
	},
}
