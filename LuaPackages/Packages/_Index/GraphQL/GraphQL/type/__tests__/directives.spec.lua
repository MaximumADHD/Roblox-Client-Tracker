--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/__tests__/directive-test.js

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map

local directives = require(script.Parent.Parent.directives)
local GraphQLDirective = directives.GraphQLDirective
local scalars = require(script.Parent.Parent.scalars)
local GraphQLString = scalars.GraphQLString
local GraphQLInt = scalars.GraphQLInt

return function()
	describe("Type System: Directive", function()
		it("defines a directive with no args", function()
			local directive = GraphQLDirective.new({
				name = "Foo",
				locations = {
					"QUERY",
				},
			})

			expect(directive).toObjectContain({
				name = "Foo",
				args = {},
				isRepeatable = false,
				locations = {
					"QUERY",
				},
			})
		end)

		it("defines a directive with multiple args", function()
			local directive = GraphQLDirective.new({
				name = "Foo",
				args = Map.new({
					{ "foo", { type = GraphQLString } },
					{ "bar", { type = GraphQLInt } },
				}),
				locations = {
					"QUERY",
				},
			})

			expect(directive).toObjectContain({
				name = "Foo",
				args = {
					{
						name = "foo",
						description = nil,
						type = GraphQLString,
						defaultValue = nil,
						deprecationReason = nil,
						extensions = nil,
						astNode = nil,
					},
					{
						name = "bar",
						description = nil,
						type = GraphQLInt,
						defaultValue = nil,
						deprecationReason = nil,
						extensions = nil,
						astNode = nil,
					},
				},
				isRepeatable = false,
				locations = {
					"QUERY",
				},
			})
		end)

		it("defines a repeatable directive", function()
			local directive = GraphQLDirective.new({
				name = "Foo",
				isRepeatable = true,
				locations = {
					"QUERY",
				},
			})

			expect(directive).toObjectContain({
				name = "Foo",
				args = {},
				isRepeatable = true,
				locations = {
					"QUERY",
				},
			})
		end)

		it("can be stringified, JSON.stringified and Object.toStringified", function()
			-- ROBLOX deviation: no JSON.stringify in Lua
			local JSON = {
				stringify = function(v)
					return '"' .. v:toJSON() .. '"'
				end,
			}

			local directive = GraphQLDirective.new({
				name = "Foo",
				locations = {
					"QUERY",
				},
			})

			expect(tostring(directive)).to.equal("@Foo")
			expect(JSON.stringify(directive)).to.equal('"@Foo"')
			-- ROBLOX deviation: there's only one way to convert object to string in Lua. We're using and testing the __tostring method
			-- expect(Object.toString(directive)).to.equal('[object GraphQLDirective]')
		end)

		it("rejects an unnamed directive", function()
			expect(function()
				return GraphQLDirective.new({
					locations = {
						"QUERY",
					},
				})
			end).toThrow("Directive must be named.")
		end)

		it("rejects a directive with incorrectly typed args", function()
			expect(function()
				return GraphQLDirective.new({
					name = "Foo",
					locations = {
						"QUERY",
					},
					-- ROBLOX deviation: we can't distinguish between an empty table/object and empty array so we explicitly pass an array in here
					args = { "foo" },
				})
			end).toThrow("@Foo args must be an object with argument names as keys.")
		end)

		it("rejects a directive with undefined locations", function()
			expect(function()
				return GraphQLDirective.new({
					name = "Foo",
				})
			end).toThrow("@Foo locations must be an Array.")
		end)

		it("rejects a directive with incorrectly typed locations", function()
			expect(function()
				return GraphQLDirective.new({
					name = "Foo",
					-- ROBLOX deviation: because empty object is same as Array, make this a non-empty object
					locations = { key = "value" },
				})
			end).toThrow("@Foo locations must be an Array.")
		end)
	end)
end
