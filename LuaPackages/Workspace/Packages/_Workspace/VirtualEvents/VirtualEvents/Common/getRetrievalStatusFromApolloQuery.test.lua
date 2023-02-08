local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Http = require(VirtualEvents.Parent.Http)
local getRetrievalStatusFromApolloQuery = require(script.Parent.getRetrievalStatusFromApolloQuery)

local RetrievalStatus = Http.Enum.RetrievalStatus

it("should return Fetching for a result that is still loading", function()
	local result = {
		loading = true,
		data = nil,
		error = nil,
		networkStatus = -1,
	}

	expect(getRetrievalStatusFromApolloQuery(result)).toBe(RetrievalStatus.Fetching)
end)

it("should return Done for a result that finished loading and has data", function()
	local result = {
		loading = false,
		data = { foo = true },
		error = nil,
		networkStatus = -1,
	}

	expect(getRetrievalStatusFromApolloQuery(result)).toBe(RetrievalStatus.Done)
end)

it("should return Failed for a result that errored", function()
	local result = {
		loading = false,
		data = nil,
		-- Casting to `any` to suppress typechecking of the ApolloClient error
		-- object. All we care about is if it exists or not
		error = {} :: any,
		networkStatus = -1,
	}

	expect(getRetrievalStatusFromApolloQuery(result)).toBe(RetrievalStatus.Failed)
end)

it("should return NotStarted for a result that hasn't loaded and has no data or errors", function()
	local result = {
		loading = false,
		data = nil,
		error = nil,
		networkStatus = -1,
	}

	expect(getRetrievalStatusFromApolloQuery(result)).toBe(RetrievalStatus.NotStarted)
end)
