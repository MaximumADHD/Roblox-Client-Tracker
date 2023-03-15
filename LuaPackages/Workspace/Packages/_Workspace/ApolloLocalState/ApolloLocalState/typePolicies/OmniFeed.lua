local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)
local mergeArrays = require(script.Parent.utils.mergeArrays)

local GetFFlagEnableMergeOmniFeedSorts = require(script.Parent.Parent.Flags).GetFFlagEnableMergeOmniFeedSorts

return {
	--[[
		omniSessionId is returned from the omni-recommendations endpoint and acts as
		the identifier for the omni feed being rendered.
	]]
	keyFields = { "omniSessionId" },
	fields = {
		sorts = {
			-- replaces the isAppend behavior in OrderedOmniItems
			merge = if GetFFlagEnableMergeOmniFeedSorts() then mergeArrays else nil,
		},
		nextPageToken = {
			read = makeDefaultReadPolicy(""),
		},
	},
}
