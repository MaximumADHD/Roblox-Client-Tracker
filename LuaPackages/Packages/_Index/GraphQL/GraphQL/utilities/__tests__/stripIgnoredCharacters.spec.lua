--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/stripIgnoredCharacters-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local Array = require(srcWorkspace.Parent.LuauPolyfill).Array
	local testUtilsWorkspace = script.Parent.Parent.Parent.__testUtils__
	local languageWorkspace = script.Parent.Parent.Parent.language

	local dedent = require(testUtilsWorkspace.dedent).dedent
	local inspectStr = require(testUtilsWorkspace.inspectStr).inspectStr
	local kitchenSinkSDL = require(testUtilsWorkspace.kitchenSinkSDL).kitchenSinkSDL
	local kitchenSinkQuery = require(testUtilsWorkspace.kitchenSinkQuery).kitchenSinkQuery

	local invariant = require(srcWorkspace.jsutils.invariant).invariant

	local Lexer = require(languageWorkspace.lexer).Lexer
	local parse = require(languageWorkspace.parser).parse
	local Source = require(languageWorkspace.source).Source

	local inspect = require(srcWorkspace.jsutils.inspect).inspect

	local stripIgnoredCharacters =
		require(script.Parent.Parent.stripIgnoredCharacters).stripIgnoredCharacters
	local ignoredTokens = {
		"\u{FEFF}",
		"\t",
		" ",
		"\n",
		"\r",
		"\r\n",
		'# "Comment" string\n',
		",",
	}
	local punctuatorTokens = {
		"!",
		"$",
		"(",
		")",
		"...",
		":",
		"=",
		"@",
		"[",
		"]",
		"{",
		"|",
		"}",
	}
	local nonPunctuatorTokens = {
		"name_token",
		"1",
		"3.14",
		'"some string value"',
		'"""block\nstring\nvalue"""',
	}

	local function lexValue(str)
		local lexer = Lexer.new(Source.new(str))
		local value = lexer:advance().value

		invariant(lexer:advance().kind == "<EOF>", "Expected EOF")

		return value
	end

	local function expectStripped(docString)
		local function toEqual(expected)
			local stripped = stripIgnoredCharacters(docString)

			invariant(
				stripped == expected,
				dedent(
					([[
        Expected stripIgnoredCharacters(%s)
            to equal %s
            but got  %s
        ]]):format(
						inspectStr(docString),
						inspectStr(expected),
						inspectStr(stripped)
					)
				)
			)

			local strippedTwice = stripIgnoredCharacters(stripped)

			invariant(
				stripped == strippedTwice,
				dedent(
					([[
        Expected stripIgnoredCharacters(%s)
            to equal %s
            but got  %s
        ]]):format(
						inspectStr(stripped),
						inspectStr(stripped),
						inspectStr(strippedTwice)
					)
				)
			)
		end
		return {
			toEqual = toEqual,
			toStayTheSame = function()
				toEqual(docString)
			end,
		}
	end

	describe("stripIgnoredCharacters", function()
		it("strips ignored characters from GraphQL query document", function()
			local query = dedent([[
        query SomeQuery($foo: String!, $bar: String) {
            someField(foo: $foo, bar: $bar) {
            a
            b {
                c
                d
            }
            }
        }
        ]])

			expect(stripIgnoredCharacters(query)).to.equal(
				"query SomeQuery($foo:String!$bar:String){someField(foo:$foo bar:$bar){a b{c d}}}"
			)
		end)

		it("accepts Source object", function()
			expect(stripIgnoredCharacters(Source.new("{ a }"))).to.equal("{a}")
		end)

		it("strips ignored characters from GraphQL SDL document", function()
			local sdl = dedent([[
        """
        Type description
        """
        type Foo {
            """
            Field description
            """
            bar: String
        }
        ]])

			expect(stripIgnoredCharacters(sdl)).to.equal(
				'"""Type description""" type Foo{"""Field description""" bar:String}'
			)
		end)

		it("report document with invalid token", function()
			local caughtError
			xpcall(function()
				stripIgnoredCharacters('{ foo(arg: "\n"')
			end, function(e)
				caughtError = e
			end)
			expect(tostring(caughtError) .. "\n").to.equal(dedent([[
        Syntax Error: Unterminated string.

        GraphQL request:1:13
        1 | { foo(arg: "
          |             ^
        2 | "
        ]]))
		end)

		it("strips non-parsable document", function()
			expectStripped('{ foo(arg: "str"').toEqual('{foo(arg:"str"')
		end)

		it("strips documents with only ignored characters", function()
			expectStripped("\n").toEqual("")
			expectStripped(",").toEqual("")
			expectStripped(",,").toEqual("")
			expectStripped("#comment\n, \n").toEqual("")

			for _, ignored in ipairs(ignoredTokens) do
				expectStripped(ignored).toEqual("")

				for _, anotherIgnored in ipairs(ignoredTokens) do
					expectStripped(ignored .. anotherIgnored).toEqual("")
				end
			end

			expectStripped(Array.join(ignoredTokens, "")).toEqual("")
		end)

		it("strips leading and trailing ignored tokens", function()
			expectStripped("\n1").toEqual("1")
			expectStripped(",1").toEqual("1")
			expectStripped(",,1").toEqual("1")
			expectStripped("#comment\n, \n1").toEqual("1")

			expectStripped("1\n").toEqual("1")
			expectStripped("1,").toEqual("1")
			expectStripped("1,,").toEqual("1")
			expectStripped("1#comment\n, \n").toEqual("1")

			for _, token in ipairs(Array.concat(punctuatorTokens, nonPunctuatorTokens)) do
				for _, ignored in ipairs(ignoredTokens) do
					expectStripped(ignored .. token).toEqual(token)
					expectStripped(token .. ignored).toEqual(token)

					for _, anotherIgnored in ipairs(ignoredTokens) do
						expectStripped(token .. ignored .. ignored).toEqual(token)
						expectStripped(ignored .. anotherIgnored .. token).toEqual(token)
					end
				end

				expectStripped(Array.join(ignoredTokens, "") .. token).toEqual(token)
				expectStripped(token .. Array.join(ignoredTokens, "")).toEqual(token)
			end
		end)

		it("strips ignored tokens between punctuator tokens", function()
			expectStripped("[,)").toEqual("[)")
			expectStripped("[\r)").toEqual("[)")
			expectStripped("[\r\r)").toEqual("[)")
			expectStripped("[\r,)").toEqual("[)")
			expectStripped("[,\n)").toEqual("[)")

			for _, left in ipairs(punctuatorTokens) do
				for _, right in ipairs(punctuatorTokens) do
					for _, ignored in ipairs(ignoredTokens) do
						expectStripped(left .. ignored .. right).toEqual(left .. right)

						for _, anotherIgnored in ipairs(ignoredTokens) do
							expectStripped(left .. ignored .. anotherIgnored .. right).toEqual(
								left .. right
							)
						end
					end

					expectStripped(left .. Array.join(ignoredTokens, "") .. right).toEqual(
						left .. right
					)
				end
			end
		end)

		it("strips ignored tokens between punctuator and non-punctuator tokens", function()
			expectStripped("[,1").toEqual("[1")
			expectStripped("[\r1").toEqual("[1")
			expectStripped("[\r\r1").toEqual("[1")
			expectStripped("[\r,1").toEqual("[1")
			expectStripped("[,\n1").toEqual("[1")

			for _, nonPunctuator in ipairs(nonPunctuatorTokens) do
				for _, punctuator in ipairs(punctuatorTokens) do
					for _, ignored in ipairs(ignoredTokens) do
						expectStripped(punctuator .. ignored .. nonPunctuator).toEqual(
							punctuator .. nonPunctuator
						)

						for _, anotherIgnored in ipairs(ignoredTokens) do
							expectStripped(punctuator .. ignored .. anotherIgnored .. nonPunctuator).toEqual(
								punctuator .. nonPunctuator
							)
						end
					end

					expectStripped(punctuator .. Array.join(ignoredTokens, "") .. nonPunctuator).toEqual(
						punctuator .. nonPunctuator
					)
				end
			end
		end)

		it("strips ignored tokens between non-punctuator and punctuator tokens", function()
			expectStripped("1,[").toEqual("1[")
			expectStripped("1\r[").toEqual("1[")
			expectStripped("1\r\r[").toEqual("1[")
			expectStripped("1\r,[").toEqual("1[")
			expectStripped("1,\n[").toEqual("1[")

			for _, nonPunctuator in ipairs(nonPunctuatorTokens) do
				for _, punctuator in ipairs(punctuatorTokens) do
					-- Special case for that is handled in the below test
					if punctuator == "..." then
						continue
					end

					for _, ignored in ipairs(ignoredTokens) do
						expectStripped(nonPunctuator .. ignored .. punctuator).toEqual(
							nonPunctuator .. punctuator
						)

						for _, anotherIgnored in ipairs(ignoredTokens) do
							expectStripped(nonPunctuator .. ignored .. anotherIgnored .. punctuator).toEqual(
								nonPunctuator .. punctuator
							)
						end
					end

					expectStripped(nonPunctuator .. Array.join(ignoredTokens, "") .. punctuator).toEqual(
						nonPunctuator .. punctuator
					)
				end
			end
		end)

		it("replace ignored tokens between non-punctuator tokens and spread with space", function()
			expectStripped("a ...").toEqual("a ...")
			expectStripped("1 ...").toEqual("1 ...")
			expectStripped("1 ... ...").toEqual("1 ......")

			for _, nonPunctuator in ipairs(nonPunctuatorTokens) do
				for _, ignored in ipairs(ignoredTokens) do
					expectStripped(nonPunctuator .. ignored .. "...").toEqual(
						nonPunctuator .. " ..."
					)

					for _, anotherIgnored in ipairs(ignoredTokens) do
						expectStripped(nonPunctuator .. ignored .. anotherIgnored .. " ...").toEqual(
							nonPunctuator .. " ..."
						)
					end
				end

				expectStripped(nonPunctuator .. Array.join(ignoredTokens, "") .. "...").toEqual(
					nonPunctuator .. " ..."
				)
			end
		end)

		it("replace ignored tokens between non-punctuator tokens with space", function()
			expectStripped("1 2").toStayTheSame()
			expectStripped('"" ""').toStayTheSame()
			expectStripped("a b").toStayTheSame()

			expectStripped("a,1").toEqual("a 1")
			expectStripped("a,,1").toEqual("a 1")
			expectStripped("a  1").toEqual("a 1")
			expectStripped("a \t 1").toEqual("a 1")

			for _, left in ipairs(nonPunctuatorTokens) do
				for _, right in ipairs(nonPunctuatorTokens) do
					for _, ignored in ipairs(ignoredTokens) do
						expectStripped(left .. ignored .. right).toEqual(left .. " " .. right)

						for _, anotherIgnored in ipairs(ignoredTokens) do
							expectStripped(left .. ignored .. anotherIgnored .. right).toEqual(
								left .. " " .. right
							)
						end
					end

					expectStripped(left .. Array.join(ignoredTokens, "") .. right).toEqual(
						left .. " " .. right
					)
				end
			end
		end)

		it("does not strip ignored tokens embedded in the string", function()
			expectStripped('" "').toStayTheSame()
			expectStripped('","').toStayTheSame()
			expectStripped('",,"').toStayTheSame()
			expectStripped('",|"').toStayTheSame()

			for _, ignored in ipairs(ignoredTokens) do
				-- ROBLOX deviation: no JSON.stringify and node inspect in Lua
				expectStripped(inspect(ignored)).toStayTheSame()

				for _, anotherIgnored in ipairs(ignoredTokens) do
					-- ROBLOX deviation: no JSON.stringify and node inspect in Lua
					expectStripped(inspect(ignored .. anotherIgnored)).toStayTheSame()
				end
			end

			-- ROBLOX deviation: no JSON.stringify and node inspect in Lua
			expectStripped(inspect(Array.join(ignoredTokens, ""))).toStayTheSame()
		end)

		it("does not strip ignored tokens embedded in the block string", function()
			expectStripped('""","""').toStayTheSame()
			expectStripped('""",,"""').toStayTheSame()
			expectStripped('""",|"""').toStayTheSame()

			local ignoredTokensWithoutFormatting = Array.filter(ignoredTokens, function(token)
				return Array.indexOf({ "\n", "\r", "\r\n", "\t", " " }, token) == -1
			end)

			for _, ignored in ipairs(ignoredTokensWithoutFormatting) do
				expectStripped('"""|' .. ignored .. '|"""').toStayTheSame()

				for _, anotherIgnored in ipairs(ignoredTokensWithoutFormatting) do
					expectStripped('"""|' .. ignored .. anotherIgnored .. '|"""').toStayTheSame()
				end
			end

			expectStripped('"""|' .. Array.join(ignoredTokensWithoutFormatting, "") .. '|"""').toStayTheSame()
		end)

		it("strips ignored characters inside block strings", function()
			local function expectStrippedString(blockStr)
				local originalValue = lexValue(blockStr)
				local strippedValue = lexValue(stripIgnoredCharacters(blockStr))

				invariant(
					originalValue == strippedValue,
					dedent(
						([[
            Expected lexValue(stripIgnoredCharacters(%s))
            to equal %s
            but got  %s
        ]]):format(
							inspectStr(blockStr),
							inspectStr(originalValue),
							inspectStr(strippedValue)
						)
					)
				)

				return expectStripped(blockStr)
			end

			expectStrippedString('""""""').toStayTheSame()
			expectStrippedString('""" """').toEqual('""""""')

			expectStrippedString('"""a"""').toStayTheSame()
			expectStrippedString('""" a"""').toEqual('""" a"""')
			expectStrippedString('""" a """').toEqual('""" a """')

			expectStrippedString('"""\n"""').toEqual('""""""')
			expectStrippedString('"""a\nb"""').toEqual('"""a\nb"""')
			expectStrippedString('"""a\rb"""').toEqual('"""a\nb"""')
			expectStrippedString('"""a\r\nb"""').toEqual('"""a\nb"""')
			expectStrippedString('"""a\r\n\nb"""').toEqual('"""a\n\nb"""')

			expectStrippedString('"""\\\n"""').toStayTheSame()
			expectStrippedString('""""\n"""').toStayTheSame()
			expectStrippedString('"""\\"""\n"""').toEqual('"""\\""""""')

			expectStrippedString('"""\na\n b"""').toStayTheSame()
			expectStrippedString('"""\n a\n b"""').toEqual('"""a\nb"""')
			expectStrippedString('"""\na\n b\nc"""').toEqual('"""a\n b\nc"""')
		end)

		it("strips kitchen sink query but maintains the exact same AST", function()
			local strippedQuery = stripIgnoredCharacters(kitchenSinkQuery)
			expect(stripIgnoredCharacters(strippedQuery)).to.equal(strippedQuery)

			local queryAST = parse(kitchenSinkQuery, { noLocation = true })
			local strippedAST = parse(strippedQuery, { noLocation = true })
			expect(strippedAST).toEqual(queryAST)
		end)

		it("strips kitchen sink SDL but maintains the exact same AST", function()
			local strippedSDL = stripIgnoredCharacters(kitchenSinkSDL)
			expect(stripIgnoredCharacters(strippedSDL)).to.equal(strippedSDL)

			local sdlAST = parse(kitchenSinkSDL, { noLocation = true })
			local strippedAST = parse(strippedSDL, { noLocation = true })
			expect(strippedAST).toEqual(sdlAST)
		end)
	end)
end
