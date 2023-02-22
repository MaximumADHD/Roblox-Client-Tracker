local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local makeVar = require(Packages.ApolloClient).makeVar

-- Reactive Variables used by the Omni Feed GraphQL implementation
return {
	nextPageToken = makeVar(nil),
	omniSessionId = makeVar(""),
	localSorts = makeVar({}),
	homeGameSorts = makeVar({}),
	supportedTreatmentTypes = makeVar({}),
}
