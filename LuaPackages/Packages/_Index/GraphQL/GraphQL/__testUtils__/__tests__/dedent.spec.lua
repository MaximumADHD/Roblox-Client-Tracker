--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/__testUtils__/__tests__/dedent-test.js

return function()
	local testUtilsWorkspace = script.Parent.Parent
	local srcWorkspace = testUtilsWorkspace.Parent
	local Packages = srcWorkspace.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array

	local dedent = require(testUtilsWorkspace.dedent).dedent

	describe("dedent", function()
		it("removes indentation in typical usage", function()
			local output = dedent([[
                type Query {
                  me: User
                }

                type User {
                  id: ID
                  name: String
                }
            ]])
			expect(output).to.equal(Array.join({
				"type Query {",
				"  me: User",
				"}",
				"",
				"type User {",
				"  id: ID",
				"  name: String",
				"}",
				"",
			}, "\n"))
		end)

		it("removes only the first level of indentation", function()
			local output = dedent([[
                first
                  second
                    third
                      fourth
            ]])
			expect(output).to.equal(Array.join({
				"first",
				"  second",
				"    third",
				"      fourth",
				"",
			}, "\n"))
		end)

		it("does not escape special characters", function()
			local output = dedent(
				"\n"
					.. "      type Root {\n"
					.. '        field(arg: String = "wi\th de\fault"): String\n'
					.. "      }\n"
					.. "    "
			)
			expect(output).to.equal(Array.join({
				"type Root {",
				'  field(arg: String = "wi\th de\fault"): String',
				"}",
				"",
			}, "\n"))
		end)

		it("also removes indentation using tabs", function()
			local output = dedent(
				"\n"
					.. "        \t\t    type Query {\n"
					.. "        \t\t      me: User\n"
					.. "        \t\t    }\n"
					.. "    "
			)
			expect(output).to.equal(Array.join({
				"type Query {",
				"  me: User",
				"}",
				"",
			}, "\n"))
		end)

		it("removes leading newlines", function()
			local output = dedent([[


                type Query {
                  me: User
                }]])
			expect(output).to.equal(Array.join({
				"type Query {",
				"  me: User",
				"}",
			}, "\n"))
		end)

		it("does not remove trailing newlines", function()
			local output = dedent([[
                type Query {
                  me: User
                }

            ]])
			expect(output).to.equal(Array.join({
				"type Query {",
				"  me: User",
				"}",
				"",
				"",
			}, "\n"))
		end)

		it("removes all trailing spaces and tabs", function()
			local output = dedent(
				"\n"
					.. "      type Query {\n"
					.. "        me: User\n"
					.. "      }\n"
					.. "          \t\t  \t "
			)
			expect(output).to.equal(Array.join({
				"type Query {",
				"  me: User",
				"}",
				"",
			}, "\n"))
		end)

		it("works on text without leading newline", function()
			local output = dedent("      type Query {\n" .. "        me: User\n" .. "      }")
			expect(output).to.equal(Array.join({
				"type Query {",
				"  me: User",
				"}",
			}, "\n"))
		end)

		it("supports expression interpolation", function()
			-- ROBLOX deviation: Lua doesn't support tagged template literals
			local output = dedent([[
			  {
			    "me": {
			      "name": "Luke Skywalker"
			      "age": 42
			    }
			  }
			]])
			expect(output).to.equal(Array.join({
				"{",
				'  "me": {',
				'    "name": "Luke Skywalker"',
				'    "age": 42',
				"  }",
				"}",
				"",
			}, "\n"))
		end)
	end)
end
