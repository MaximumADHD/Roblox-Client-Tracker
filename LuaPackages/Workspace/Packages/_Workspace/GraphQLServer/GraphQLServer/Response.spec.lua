local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local GraphQLError = require(Packages.GraphQL).GraphQLError
local Response = require(script.Parent.Response)
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

return function()
	it("should pass a json blob via promise", function()
		local resp = Response.new({
			data = {
				user = {
					id = "1",
					displayName = "Roblox",
				},
			},
		})

		local text = resp:text()
			:andThen(function(result)
				return HttpService:JSONDecode(result)
			end)
			:expect()

		jestExpect(text).toEqual({
			data = {
				user = {
					id = "1",
					displayName = "Roblox",
				},
			},
		})
	end)

	it("should handle GraphQLErrors and string errors", function()
		local resp = Response.new({
			data = {},
			errors = {
				GraphQLError.new("testError"),
				GraphQLError.new("testError2"),
				"testError3",
				{
					customErrorMessage = "testError4",
				},
			},
		})

		local text = resp:text()
			:andThen(function(result)
				return HttpService:JSONDecode(result)
			end)
			:expect()

		jestExpect(text).toEqual({
			data = {},
			errors = {
				{
					message = "testError",
				},
				{
					message = "testError2",
				},
				"testError3",
				{
					customErrorMessage = "testError4",
				},
			} :: Array<any>,
		})
	end)
end
