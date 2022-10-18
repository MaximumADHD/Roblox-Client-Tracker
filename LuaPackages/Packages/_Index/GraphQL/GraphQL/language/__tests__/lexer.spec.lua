--!nocheck
--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/__tests__/lexer-test.js

return function()
	local language = script.Parent.Parent
	local src = language.Parent
	local Packages = src.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array
	local instanceof = LuauPolyfill.instanceof

	local dedent = require(src.__testUtils__.dedent).dedent
	local inspect = require(src.jsutils.inspect).inspect
	local lexerExport = require(language.lexer)
	local sourceExport = require(language.source)
	local tokenKindExport = require(language.tokenKind)
	local GraphQLError = require(src.error.GraphQLError).GraphQLError

	local Lexer = lexerExport.Lexer
	local isPunctuatorTokenKind = lexerExport.isPunctuatorTokenKind
	local Source = sourceExport.Source
	local TokenKind = tokenKindExport.TokenKind

	local lexOne = function(str)
		local lexer = Lexer.new(Source.new(str))
		return lexer:advance()
	end

	local lexSecond = function(str)
		local lexer = Lexer.new(Source.new(str))

		lexer:advance()
		return lexer:advance()
	end

	local expectSyntaxError = function(expect_, text)
		local lexSecondRes = function()
			return lexSecond(text)
		end
		local _ok, thrownError = pcall(lexSecondRes)
		-- ROBLOX deviation: expect cannot be called unless inside of an it
		-- ROBLOX deviation: pass expect into this function and use local scope
		expect_(_ok).to.equal(false)
		return expect_(thrownError)
	end

	describe("Lexer", function()
		it("disallows uncommon control characters", function()
			expectSyntaxError(expect, "\007").toObjectContain({
				message = 'Syntax Error: Cannot contain the invalid character "\\u0007".',
				locations = { { column = 1, line = 1 } },
			})
		end)

		it("accepts BOM header", function()
			expect(lexOne("\u{FEFF} foo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 3,
				_end = 6,
				value = "foo",
			})
		end)

		it("tracks line breaks", function()
			expect(lexOne("foo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 1,
				_end = 4,
				line = 1,
				column = 1,
				value = "foo",
			})
			expect(lexOne("\nfoo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 2,
				_end = 5,
				line = 2,
				column = 1,
				value = "foo",
			})
			expect(lexOne("\rfoo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 2,
				_end = 5,
				line = 2,
				column = 1,
				value = "foo",
			})
			expect(lexOne("\r\nfoo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 3,
				_end = 6,
				line = 2,
				column = 1,
				value = "foo",
			})
			expect(lexOne("\n\rfoo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 3,
				_end = 6,
				line = 3,
				column = 1,
				value = "foo",
			})
			expect(lexOne("\r\r\n\nfoo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 5,
				_end = 8,
				line = 4,
				column = 1,
				value = "foo",
			})
			expect(lexOne("\n\n\r\rfoo")).toObjectContain({
				kind = TokenKind.NAME,
				start = 5,
				_end = 8,
				line = 5,
				column = 1,
				value = "foo",
			})
		end)

		it("records line and column", function()
			expect(lexOne("\n \r\n \r  foo\n")).toObjectContain({
				kind = TokenKind.NAME,
				start = 9,
				_end = 12,
				line = 4,
				column = 3,
				value = "foo",
			})
		end)

		it("can be JSON.stringified, util.inspected or jsutils.inspect", function()
			local token = lexOne("foo")
			-- ROBLOX deviation: no JSON.stringify and node inspect in Lua

			expect(token).toObjectContain({
				kind = "Name",
				line = 1,
				column = 1,
				value = "foo",
			})
			-- ROBLOX deviation: key order is different
			expect(inspect(token)).toEqual('{ value: "foo", kind: "Name", column: 1, line: 1 }')
		end)

		it("skips whitespace and comments", function()
			expect(lexOne("\n\n    foo\n\n\n")).toObjectContain({
				kind = TokenKind.NAME,
				start = 7,
				_end = 10,
				value = "foo",
			})

			expect(lexOne("\n    #connent\n    foo#comment\n")).toObjectContain({
				kind = TokenKind.NAME,
				start = 19,
				_end = 22,
				value = "foo",
			})

			expect(lexOne(",,,foo,,,")).toObjectContain({
				kind = TokenKind.NAME,
				start = 4,
				_end = 7,
				value = "foo",
			})
		end)

		it("errors respect whitespace", function()
			local caughtError
			xpcall(function()
				lexOne(Array.join({ "", "", "    ?", "" }, "\n"))
			end, function(e)
				caughtError = e
			end)
			expect(tostring(caughtError) .. "\n").to.equal(dedent([[
			  Syntax Error: Cannot parse the unexpected character "?".

			  GraphQL request:3:5
			  2 |
			  3 |     ?
			    |     ^
			  4 |
			]]))
		end)

		it("updates line numbers in error for file context", function()
			local caughtError
			xpcall(function()
				local str = Array.join({ "", "", "     ?", "" }, "\n")
				local source = Source.new(str, "foo.js", { line = 11, column = 12 })
				Lexer.new(source):advance()
			end, function(e)
				caughtError = e
			end)
			expect(tostring(caughtError) .. "\n").to.equal(dedent([[
			  Syntax Error: Cannot parse the unexpected character "?".

			  foo.js:13:6
			  12 |
			  13 |      ?
			     |      ^
			  14 |
			]]))
		end)

		it("updates column numbers in error for file context", function()
			local caughtError
			xpcall(function()
				local source = Source.new("?", "foo.js", { line = 1, column = 5 })
				Lexer.new(source):advance()
			end, function(e)
				caughtError = e
			end)
			expect(tostring(caughtError) .. "\n").to.equal(dedent([[
			  Syntax Error: Cannot parse the unexpected character "?".

			  foo.js:1:5
			  1 |     ?
			    |     ^
			]]))
		end)

		it("lexes strings", function()
			expect(lexOne('""')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 3,
				value = "",
			})

			expect(lexOne('"simple"')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 9,
				value = "simple",
			})

			expect(lexOne('" white space "')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 16,
				value = " white space ",
			})

			expect(lexOne('"quote \\""')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 11,
				value = 'quote "',
			})

			expect(lexOne('"escaped \\n\\r\\b\\t\\f"')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 21,
				value = "escaped \n\r\b\t\f",
			})

			expect(lexOne('"slashes \\\\ \\/"')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 16,
				value = "slashes \\ /",
			})

			expect(lexOne('"unicode \\u1234\\u5678\\u90AB\\uCDEF"')).toObjectContain({
				kind = TokenKind.STRING,
				start = 1,
				_end = 35,
				value = "unicode \u{1234}\u{5678}\u{90AB}\u{CDEF}",
			})
		end)

		it("lex reports useful string errors", function()
			expectSyntaxError(expect, '"').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 2 } },
			})

			expectSyntaxError(expect, '"""').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 4 } },
			})

			expectSyntaxError(expect, '""""').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 5 } },
			})

			expectSyntaxError(expect, '"no end quote').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 14 } },
			})

			expectSyntaxError(expect, "'single quotes'").toObjectContain({
				message = "Syntax Error: Unexpected single quote character ('), did you mean to use a double quote (\")?",
				locations = { { line = 1, column = 1 } },
			})

			expectSyntaxError(expect, '"contains unescaped \u{0007} control char"').toObjectContain({
				message = 'Syntax Error: Invalid character within String: "\\u0007".',
				locations = { { line = 1, column = 21 } },
			})

			expectSyntaxError(expect, '"null-byte is not \u{0000} end of file"').toObjectContain({
				message = 'Syntax Error: Invalid character within String: "\\u0000".',
				locations = { { line = 1, column = 19 } },
			})

			expectSyntaxError(expect, '"multi\nline"').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"multi\rline"').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\z esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\z.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\x esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\x.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\u1 esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\u1 es.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\u0XX1 esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\u0XX1.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\uXXXX esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\uXXXX.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\uFXXX esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\uFXXX.",
				locations = { { line = 1, column = 7 } },
			})

			expectSyntaxError(expect, '"bad \\uXXXF esc"').toObjectContain({
				message = "Syntax Error: Invalid character escape sequence: \\uXXXF.",
				locations = { { line = 1, column = 7 } },
			})
		end)

		it("lexes block strings", function()
			expect(lexOne('""""""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 7,
				value = "",
			})

			expect(lexOne('"""simple"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 13,
				value = "simple",
			})

			expect(lexOne('""" white space """')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 20,
				value = " white space ",
			})

			expect(lexOne('"""contains " quote"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 23,
				value = 'contains " quote',
			})

			expect(lexOne('"""contains \\""" triple quote"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 33,
				value = 'contains """ triple quote',
			})

			expect(lexOne('"""multi\nline"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 17,
				value = "multi\nline",
			})

			expect(lexOne('"""multi\rline\r\nnormalized"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 29,
				value = "multi\nline\nnormalized",
			})

			expect(lexOne('"""unescaped \\n\\r\\b\\t\\f\\u1234"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 33,
				value = "unescaped \\n\\r\\b\\t\\f\\u1234",
			})

			expect(lexOne('"""slashes \\\\ \\/"""')).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 20,
				value = "slashes \\\\ \\/",
			})

			expect(
				lexOne('"""\n\n        spans\n          multiple\n            lines\n\n        """')
			).toObjectContain({
				kind = TokenKind.BLOCK_STRING,
				start = 1,
				_end = 69,
				value = "spans\n  multiple\n    lines",
			})
		end)

		it("advance line after lexing multiline block string", function()
			expect(lexSecond(Array.join({
				'"""',
				"",
				"        spans",
				"          multiple",
				"            lines",
				"",
				'        \n """ second_token',
			}, "\n"))).toObjectContain({
				kind = TokenKind.NAME,
				start = 72,
				_end = 84,
				line = 8,
				column = 6,
				value = "second_token",
			})

			expect(lexSecond(Array.join({
				'""" \n',
				"spans \r\n",
				"multiple \n\r",
				"lines \n\n",
				'"""\n second_token',
			}, ""))).toObjectContain({
				kind = TokenKind.NAME,
				start = 38,
				_end = 50,
				line = 8,
				column = 2,
				value = "second_token",
			})
		end)

		it("lex reports useful block string errors", function()
			expectSyntaxError(expect, '"""').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 4 } },
			})

			expectSyntaxError(expect, '"""no end quote').toObjectContain({
				message = "Syntax Error: Unterminated string.",
				locations = { { line = 1, column = 16 } },
			})

			expectSyntaxError(expect, '"""contains unescaped \u{0007} control char"""').toObjectContain({
				message = 'Syntax Error: Invalid character within String: "\\u0007".',
				locations = { { line = 1, column = 23 } },
			})

			expectSyntaxError(expect, '"""null-byte is not \u{0000} end of file"""').toObjectContain({
				message = 'Syntax Error: Invalid character within String: "\\u0000".',
				locations = { { line = 1, column = 21 } },
			})
		end)

		it("lexes numbers", function()
			expect(lexOne("4")).toObjectContain({
				kind = TokenKind.INT,
				start = 1,
				_end = 2,
				value = "4",
			})

			expect(lexOne("4.123")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 6,
				value = "4.123",
			})

			expect(lexOne("-4")).toObjectContain({
				kind = TokenKind.INT,
				start = 1,
				_end = 3,
				value = "-4",
			})

			expect(lexOne("9")).toObjectContain({
				kind = TokenKind.INT,
				start = 1,
				_end = 2,
				value = "9",
			})

			expect(lexOne("0")).toObjectContain({
				kind = TokenKind.INT,
				start = 1,
				_end = 2,
				value = "0",
			})

			expect(lexOne("-4.123")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 7,
				value = "-4.123",
			})

			expect(lexOne("0.123")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 6,
				value = "0.123",
			})

			expect(lexOne("123e4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 6,
				value = "123e4",
			})

			expect(lexOne("123E4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 6,
				value = "123E4",
			})

			expect(lexOne("123e-4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 7,
				value = "123e-4",
			})

			expect(lexOne("123e+4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 7,
				value = "123e+4",
			})

			expect(lexOne("-1.123e4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 9,
				value = "-1.123e4",
			})

			expect(lexOne("-1.123E4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 9,
				value = "-1.123E4",
			})

			expect(lexOne("-1.123e-4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 10,
				value = "-1.123e-4",
			})

			expect(lexOne("-1.123e+4")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 10,
				value = "-1.123e+4",
			})

			expect(lexOne("-1.123e4567")).toObjectContain({
				kind = TokenKind.FLOAT,
				start = 1,
				_end = 12,
				value = "-1.123e4567",
			})
		end)

		it("lex reports useful number errors", function()
			expectSyntaxError(expect, "00").toObjectContain({
				message = 'Syntax Error: Invalid number, unexpected digit after 0: "0".',
				locations = { { line = 1, column = 2 } },
			})

			expectSyntaxError(expect, "01").toObjectContain({
				message = 'Syntax Error: Invalid number, unexpected digit after 0: "1".',
				locations = { { line = 1, column = 2 } },
			})

			expectSyntaxError(expect, "01.23").toObjectContain({
				message = 'Syntax Error: Invalid number, unexpected digit after 0: "1".',
				locations = { { line = 1, column = 2 } },
			})

			expectSyntaxError(expect, "+1").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character "+".',
				locations = { { line = 1, column = 1 } },
			})

			expectSyntaxError(expect, "1.").toObjectContain({
				message = "Syntax Error: Invalid number, expected digit but got: <EOF>.",
				locations = { { line = 1, column = 3 } },
			})

			expectSyntaxError(expect, "1e").toObjectContain({
				message = "Syntax Error: Invalid number, expected digit but got: <EOF>.",
				locations = { { line = 1, column = 3 } },
			})

			expectSyntaxError(expect, "1E").toObjectContain({
				message = "Syntax Error: Invalid number, expected digit but got: <EOF>.",
				locations = { { line = 1, column = 3 } },
			})

			expectSyntaxError(expect, "1.e1").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "e".',
				locations = { { line = 1, column = 3 } },
			})

			expectSyntaxError(expect, ".123").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character ".".',
				locations = { { line = 1, column = 1 } },
			})

			expectSyntaxError(expect, "1.A").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "A".',
				locations = { { line = 1, column = 3 } },
			})

			expectSyntaxError(expect, "-A").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "A".',
				locations = { { line = 1, column = 2 } },
			})

			expectSyntaxError(expect, "1.0e").toObjectContain({
				message = "Syntax Error: Invalid number, expected digit but got: <EOF>.",
				locations = { { line = 1, column = 5 } },
			})

			expectSyntaxError(expect, "1.0eA").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "A".',
				locations = { { line = 1, column = 5 } },
			})

			expectSyntaxError(expect, "1.2e3e").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "e".',
				locations = { { line = 1, column = 6 } },
			})

			expectSyntaxError(expect, "1.2e3.4").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: ".".',
				locations = { { line = 1, column = 6 } },
			})

			expectSyntaxError(expect, "1.23.4").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: ".".',
				locations = { { line = 1, column = 5 } },
			})
		end)

		it("lex does not allow name-start after a number", function()
			expectSyntaxError(expect, "0xF1").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "x".',
				locations = { { line = 1, column = 2 } },
			})
			expectSyntaxError(expect, "0b10").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "b".',
				locations = { { line = 1, column = 2 } },
			})
			expectSyntaxError(expect, "123abc").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "a".',
				locations = { { line = 1, column = 4 } },
			})
			expectSyntaxError(expect, "1_234").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "_".',
				locations = { { line = 1, column = 2 } },
			})
			expectSyntaxError(expect, "1ß").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character "\\u00DF".',
				locations = { { line = 1, column = 2 } },
			})
			expectSyntaxError(expect, "1.23f").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "f".',
				locations = { { line = 1, column = 5 } },
			})
			expectSyntaxError(expect, "1.234_5").toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "_".',
				locations = { { line = 1, column = 6 } },
			})
			expectSyntaxError(expect, "1ß").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character "\\u00DF".',
				locations = { { line = 1, column = 2 } },
			})
		end)

		it("lexes punctuation", function()
			expect(lexOne("!")).toObjectContain({
				kind = TokenKind.BANG,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("$")).toObjectContain({
				kind = TokenKind.DOLLAR,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("(")).toObjectContain({
				kind = TokenKind.PAREN_L,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne(")")).toObjectContain({
				kind = TokenKind.PAREN_R,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("...")).toObjectContain({
				kind = TokenKind.SPREAD,
				start = 1,
				_end = 4,
				value = nil,
			})

			expect(lexOne(":")).toObjectContain({
				kind = TokenKind.COLON,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("=")).toObjectContain({
				kind = TokenKind.EQUALS,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("@")).toObjectContain({
				kind = TokenKind.AT,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("[")).toObjectContain({
				kind = TokenKind.BRACKET_L,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("]")).toObjectContain({
				kind = TokenKind.BRACKET_R,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("{")).toObjectContain({
				kind = TokenKind.BRACE_L,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("|")).toObjectContain({
				kind = TokenKind.PIPE,
				start = 1,
				_end = 2,
				value = nil,
			})

			expect(lexOne("}")).toObjectContain({
				kind = TokenKind.BRACE_R,
				start = 1,
				_end = 2,
				value = nil,
			})
		end)

		it("lex reports useful unknown character error", function()
			expectSyntaxError(expect, "..").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character ".".',
				locations = { { line = 1, column = 1 } },
			})

			expectSyntaxError(expect, "?").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character "?".',
				locations = { { line = 1, column = 1 } },
			})

			expectSyntaxError(expect, "\u{203B}").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character "\\u203B".',
				locations = { { line = 1, column = 1 } },
			})

			expectSyntaxError(expect, "\u{200b}").toObjectContain({
				message = 'Syntax Error: Cannot parse the unexpected character "\\u200B".',
				locations = { { line = 1, column = 1 } },
			})
		end)

		it("lex reports useful information for dashes in names", function()
			local source = Source.new("a-b")
			local lexer = Lexer.new(source)
			local firstToken = lexer:advance()
			expect(firstToken).toObjectContain({
				kind = TokenKind.NAME,
				start = 1,
				_end = 2,
				value = "a",
			})

			local caughtError
			xpcall(function()
				lexer:advance()
			end, function(e)
				caughtError = e
			end)

			expect(instanceof(caughtError, GraphQLError)).to.equal(true)
			expect(caughtError).toObjectContain({
				message = 'Syntax Error: Invalid number, expected digit but got: "b".',
				locations = { { line = 1, column = 3 } },
			})
		end)

		it("produces double linked list of tokens, including comments", function()
			local source = Source.new(Array.join({
				"",
				"      {",
				"        #comment",
				"        field",
				"      }",
				"    ",
			}, "\n"))

			local lexer = Lexer.new(source)
			local startToken = lexer.token
			local endToken
			repeat
				endToken = lexer:advance()
				-- // Lexer advances over ignored comment tokens to make writing parsers
				-- // easier, but will include them in the linked list result.
				expect(endToken.kind ~= TokenKind.COMMENT).to.equal(true)
			until not (endToken.kind ~= TokenKind.EOF)

			expect(startToken.prev).to.equal(nil)
			expect(endToken.next).to.equal(nil)

			local tokens = {}
			local tok = startToken

			while tok do
				if #tokens > 0 then
					-- // Tokens are double-linked, prev should point to last seen token.
					expect(tok.prev).to.equal(tokens[#tokens])
				end
				table.insert(tokens, tok)
				tok = tok.next
			end

			expect(Array.map(tokens, function(tok_)
				return tok_.kind
			end)).toObjectContain({
				TokenKind.SOF,
				TokenKind.BRACE_L,
				TokenKind.COMMENT,
				TokenKind.NAME,
				TokenKind.BRACE_R,
				TokenKind.EOF,
			})
		end)
	end)

	describe("isPunctuatorTokenKind", function()
		local function isPunctuatorToken(text)
			return isPunctuatorTokenKind(lexOne(text).kind)
		end

		it("returns true for punctuator tokens", function()
			expect(isPunctuatorToken("!")).to.equal(true)
			expect(isPunctuatorToken("$")).to.equal(true)
			expect(isPunctuatorToken("&")).to.equal(true)
			expect(isPunctuatorToken("(")).to.equal(true)
			expect(isPunctuatorToken(")")).to.equal(true)
			expect(isPunctuatorToken("...")).to.equal(true)
			expect(isPunctuatorToken(":")).to.equal(true)
			expect(isPunctuatorToken("=")).to.equal(true)
			expect(isPunctuatorToken("@")).to.equal(true)
			expect(isPunctuatorToken("[")).to.equal(true)
			expect(isPunctuatorToken("]")).to.equal(true)
			expect(isPunctuatorToken("{")).to.equal(true)
			expect(isPunctuatorToken("|")).to.equal(true)
			expect(isPunctuatorToken("}")).to.equal(true)
		end)

		it("returns false for non-punctuator tokens", function()
			expect(isPunctuatorToken("")).to.equal(false)
			expect(isPunctuatorToken("name")).to.equal(false)
			expect(isPunctuatorToken("1")).to.equal(false)
			expect(isPunctuatorToken("3.14")).to.equal(false)
			expect(isPunctuatorToken('"str"')).to.equal(false)
			expect(isPunctuatorToken('"""str"""')).to.equal(false)
		end)
	end)
end
