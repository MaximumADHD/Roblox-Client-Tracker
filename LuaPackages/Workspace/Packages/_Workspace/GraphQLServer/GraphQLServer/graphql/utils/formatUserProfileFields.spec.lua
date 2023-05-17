local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Packages = GraphQLServer.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local formatUserProfileFields = require(script.Parent.formatUserProfileFields)
local UserProfileNestedFields = require(GraphQLServer.graphql.enums.UserProfileNestedFields)
local UserProfileNameFields = require(GraphQLServer.graphql.enums.UserProfileNameFields)

return function()
	describe("formatUserProfileFields", function()
		local fakeOptionsWithNames = {
			schema = {},
			fragments = {},
			variableValues = {},
			returnType = {},
			fieldNodes = {},
			names = {},
		}

		local fakeOptionsWithoutNames = {
			schema = {},
			fragments = {},
			variableValues = {},
			returnType = {},
			fieldNodes = {},
		}

		it("adds fields from query", function()
			local collectSubFieldsImpl = jest.fn()
			collectSubFieldsImpl.mockReturnValueOnce(fakeOptionsWithNames).mockReturnValueOnce({
				{ UserProfileNameFields.alias } :: { UserProfileNameFields.NameFields },
				{ UserProfileNameFields.combinedName },
			})

			local result = formatUserProfileFields(fakeOptionsWithNames, collectSubFieldsImpl)

			expect(collectSubFieldsImpl).toHaveBeenCalledTimes(2)
			expect(result).toEqual({
				`{UserProfileNestedFields.names}.{UserProfileNameFields.alias}`,
				`{UserProfileNestedFields.names}.{UserProfileNameFields.combinedName}`,
			})
		end)

		it("should skip fields not provided", function()
			local collectSubFieldsImpl = jest.fn()
			collectSubFieldsImpl.mockReturnValueOnce(fakeOptionsWithoutNames).mockReturnValueOnce({})

			local result = formatUserProfileFields(fakeOptionsWithoutNames, collectSubFieldsImpl)

			expect(collectSubFieldsImpl).toHaveBeenCalledTimes(1)
			expect(result).toEqual({})
		end)
	end)
end
