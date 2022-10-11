-- upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/error/__tests__/locatedError-test.js

return function()
	local errorsWorkspace = script.Parent.Parent
	local srcWorkspace = script.Parent.Parent.Parent
	local Packages = srcWorkspace.Parent

	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error

	local GraphQLError = require(errorsWorkspace.GraphQLError).GraphQLError
	local locatedError = require(errorsWorkspace.locatedError).locatedError

	describe("locatedError", function()
		it("passes GraphQLError through", function()
			local e = GraphQLError.new("msg", nil, nil, nil, {
				"path",
				3,
				"to",
				"field",
			})

			expect(locatedError(e, {}, {})).toEqual(e)
		end)

		it("passes GraphQLError-ish through", function()
			local e = Error.new("I have a different prototype chain")
			e.locations = {}
			e.path = {}
			e.nodes = {}
			e.source = nil
			e.positions = {}
			e.name = "GraphQLError"

			expect(locatedError(e, {}, {})).toEqual(e)
		end)

		it("does not pass through elasticsearch-like errors", function()
			local e = Error.new("I am from elasticsearch")
			e.path = "/something/feed/_search"

			expect(locatedError(e, {}, {})).never.toEqual(e)
		end)
	end)
end
