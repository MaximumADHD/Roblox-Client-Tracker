-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/@graphql-tools/links@8.3.12/packages/merge/tests/merge-resolvers.spec.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local mergeResolvers = require(script.Parent.mergeResolvers)

local LuauPolyfill = require(Packages.LuauPolyfill)
type IResolvers<TSource, TContext> = mergeResolvers.IResolvers<TSource, TContext>
type Array<T> = LuauPolyfill.Array<T>

return function()
	describe("Merge Resolvers", function()
		it("should return the correct value when falsely value provided", function()
			jestExpect(mergeResolvers(nil)).toEqual({})
		end)
		it("should return the correct value when empty array provided", function()
			jestExpect(mergeResolvers({})).toEqual({})
		end)
		it("should return the correct value when one value array provided", function()
			jestExpect(mergeResolvers({ { User = {} } } :: Array<IResolvers<any, any>>)).toEqual({ User = {} })
		end)
		it("should return the correct when multiple values provided", function()
			jestExpect(mergeResolvers({ { User = {} }, { MyType = {} } } :: Array<IResolvers<any, any>>)).toEqual({
				User = {},
				MyType = {},
			})
		end)
		it("should merge first level fields", function()
			jestExpect(mergeResolvers({ { User = { f1 = 1 } }, { User = { f2 = 2 } } } :: Array<IResolvers<any, any>>)).toEqual({
				User = { f1 = 1, f2 = 2 },
			})
		end)
		it("should exclude types", function()
			jestExpect(
				mergeResolvers(
					{ { User = {} }, { MyType = {} } } :: Array<IResolvers<any, any>>,
					{ exclusions = { "User.*" } }
				)
			).toEqual({
				MyType = {},
			})
		end)
		it("should exclude fields", function()
			jestExpect(
				mergeResolvers(
					{ { User = { f1 = 1 } }, { User = { f2 = 2 } } } :: Array<IResolvers<any, any>>,
					{ exclusions = { "User.f1" } }
				)
			).toEqual({
				User = { f2 = 2 },
			})
		end)
	end)
end
