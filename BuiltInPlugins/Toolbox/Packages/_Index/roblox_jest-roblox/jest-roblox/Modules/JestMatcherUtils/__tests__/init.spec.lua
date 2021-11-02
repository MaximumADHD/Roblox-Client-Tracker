-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-matcher-utils/src/__tests__/index.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */
return function()
	local Workspace = script.Parent.Parent
	local Modules = Workspace.Parent
	local Packages = Modules.Parent.Parent

	local Symbol = require(Packages.LuauPolyfill).Symbol
	local RegExp = require(Packages.LuauPolyfill).RegExp

	local snapshots = require(script.Parent.__snapshots__["init.snap"])

	local equals = require(Modules.Expect.jasmineUtils).equals

	-- deviation: omitted chalk library import

	local prettyFormat = require(Modules.PrettyFormat).prettyFormat
	-- deviation: omitted alignedAnsiStyleSerializer import

	local JestMatcherUtils = require(Workspace)
	-- deviation: omitted MatcherHintOptions import
	local diff = JestMatcherUtils.diff
	local ensureNoExpected = JestMatcherUtils.ensureNoExpected
	local ensureNumbers = JestMatcherUtils.ensureNumbers
	local getLabelPrinter = JestMatcherUtils.getLabelPrinter
	local matcherHint = JestMatcherUtils.matcherHint
	local pluralize = JestMatcherUtils.pluralize
	local stringify = JestMatcherUtils.stringify

	describe("stringify()", function()
		local fixtures = {
			{{}, "{}"},
			{1, "1"},
			{0, "0"},
			{1.5, "1.5"},
			{nil, "nil"},
			{"abc", "\"abc\""},
			{0/0, "nan"},
			{math.huge, "inf"},
			{-math.huge, "-inf"},
			{RegExp("ab\\.c", "i"), "/ab\\.c/i"}
		}

		for key, value in ipairs(fixtures) do
			it(stringify(value[1]), function()
				expect(stringify(value[1])).to.equal(value[2])
			end)
		end

		it("circular references", function()
			local a: any = {}
			a.a = a
			expect(stringify(a)).to.equal("{\"a\": [Circular]}")
		end)

		it("toJSON error", function()
			local evil = {
				toJSON = function()
					error("Nope.")
				end
			}

			expect(stringify(evil)).to.equal("{\"toJSON\": [Function anonymous]}")
			-- deviation: PrettyFormat returns [Function anonymous] since we
			-- can't get function information
			expect(stringify({a = {b = {evil = evil}}})).to.equal("{\"a\": {\"b\": {\"evil\": {\"toJSON\": [Function anonymous]}}}}")

			-- deviation: we use a table with a __call metamethod to mimic a
			-- function with properties in upstream
			local Evil = {}
			setmetatable(Evil, {__call = function() end})
			Evil.toJSON = evil.toJSON
			expect(stringify(Evil)).to.equal("{\"toJSON\": [Function anonymous]}")
		end)

		it("toJSON errors when comparing two objects", function()
			local function toJSON()
				error("Nope.")
			end

			local evilA = {
				a = 1,
				toJSON = toJSON
			}

			local evilB = {
				b = 1,
				toJSON = toJSON
			}

			-- deviation: our to.equal() method does not work in the same way
			-- so I'm not sure how to reconcile this. For now I just made it so that
			-- I check equality and confirm that they are not equal
			expect(equals(evilA, evilB)).to.equal(false)
		end)

		it("reduces maxDepth if stringifying very large objects", function()
			local big: any = {a = 1, b = {}}
			local small: any = {a = 1, b = {}}
			for i = 0, 9999 do
				big.b[i] = "test"
			end

			for i = 0, 9 do
				small.b[i] = "test"
			end

			expect(stringify(big)).to.equal(prettyFormat(big, {maxDepth = 1, min = true}))
			expect(stringify(small)).to.equal(prettyFormat(small, {min = true}))
		end)
	end)

	describe("ensureNumbers()", function()
		local matcherName = "toBeCloseTo"

		it("dont throw error when variables are numbers", function()
			expect(function()
				ensureNumbers(1, 2, matcherName)
			end).never.to.throw()
		end)

		it("throws error when expected is not a number (backward compatibility)", function()
			expect(function()
				ensureNumbers(1, "not_a_number", "." .. matcherName)
			end).to.throw(snapshots["ensureNumbers() throws error when expected is not a number (backward compatibility) 1"])
		end)

		it("throws error when received is not a number (backward compatibility", function()
			expect(function()
				ensureNumbers("not_a_number", 3, "." .. matcherName)
			end).to.throw(snapshots["ensureNumbers() throws error when received is not a number (backward compatibility) 1"])
		end)

		describe("with options", function()
			it("promise empty isNot false received", function()
				local options: JestMatcherUtils.MatcherHintOptions = {
					isNot = false,
					promise = "",
					secondArgument = "precision"
				}

				expect(function()
					ensureNumbers("", 0, matcherName, options)
				end).to.throw(snapshots["ensureNumbers() with options promise empty isNot false received 1"])
			end)

			it("promise empty isNot true expected", function()
				local options: JestMatcherUtils.MatcherHintOptions = {
					isNot = true,
					-- promise nil is equivalent to empty string
				}

				expect(function()
					ensureNumbers(0.1, nil, matcherName, options)
				end).to.throw(snapshots["ensureNumbers() with options promise empty isNot true expected 1"])
			end)

			it("promise rejects isNot false expected", function()
				local options: JestMatcherUtils.MatcherHintOptions = {
					isNot = false,
					promise = "rejects"
				}

				expect(function()
					ensureNumbers(0.01, "0", matcherName, options)
				end).to.throw(snapshots["ensureNumbers() with options promise rejects isNot false expected 1"])
			end)

			it("promise rejects isNot true received", function()
				local options: JestMatcherUtils.MatcherHintOptions = {
					isNot = true,
					promise = "rejects"
				}

				expect(function()
					ensureNumbers(Symbol(0.1), 0, matcherName, options)
				end).to.throw(snapshots["ensureNumbers() with options promise rejects isNot true received 1"])
			end)

			it("promise resolves isNot false received", function()
				local options: JestMatcherUtils.MatcherHintOptions = {
					isNot = false,
					promise = "resolves"
				}

				expect(function()
					ensureNumbers(false, 0, matcherName, options)
				end).to.throw(snapshots["ensureNumbers() with options promise resolves isNot false received 1"])
			end)

			it("promise resolves isNot true expected", function()
				local options: JestMatcherUtils.MatcherHintOptions = {
					isNot = true,
					promise = "resolves"
				}

				expect(function()
					ensureNumbers(0.1, nil, matcherName, options)
				end).to.throw(snapshots["ensureNumbers() with options promise resolves isNot true expected 1"])
			end)
		end)
	end)

	describe("ensureNoExpected()", function()
		local matcherName = "toBeDefined"

		it("dont throw error when undefined", function()
			expect(function()
				ensureNoExpected(nil, matcherName)
			end).never.to.throw()
		end)

		it("throws error when expected is not undefined with matcherName", function()
			expect(function()
				ensureNoExpected({a = 1}, "." .. matcherName)
			end).to.throw(snapshots["ensureNoExpected() throws error when expected is not undefined with matcherName 1"])
		end)

		it("throws error when expected is not undefined with matcherName and options", function()
			expect(function()
				ensureNoExpected({a = 1}, matcherName, {isNot = true})
			end).to.throw(snapshots["ensureNoExpected() throws error when expected is not undefined with matcherName and options 1"])
		end)
	end)

	-- deviation: we can't mock jest-diff so we let it call through and compare
	-- the actual output
	describe("diff", function()
		it("forwards to jest-diff", function()
			local fixtures = {
				{"a", "b"},
				{"a", {}},
				{"a", nil},
				{"a", 1},
				{"a", true},
				{1, true}
			}

			for i, value in ipairs(fixtures) do
				expect(diff(value[1], value[2])).to.equal(snapshots["diff forwards to jest-diff " .. i])
			end
		end)

		it("two booleans", function()
			expect(diff(false, true)).to.equal(nil)
		end)

		it("two numbers", function()
			expect(diff(1, 2)).to.equal(nil)
		end)

		-- deviation: skipped test testing bigints since we don't have this
		-- type in lua
		itSKIP("two bigints", function()
			expect(diff(1, 2)).to.equal(nil)
		end)
	end)

	describe("pluralize()", function()
		it("one", function()
			expect(pluralize("apple", 1)).to.equal("one apple")
		end)

		it("two", function()
			expect(pluralize("apple", 2)).to.equal("two apples")
		end)

		it("20", function()
			expect(pluralize("apple", 20)).to.equal("20 apples")
		end)
	end)

	describe("getLabelPrinter", function()
		it("0 args", function()
			local printLabel = getLabelPrinter()
			expect(printLabel("")).to.equal(": ")
		end)

		it("1 empty string", function()
			local printLabel = getLabelPrinter()
			expect(printLabel("")).to.equal(": ")
		end)

		it("1 non-empty string", function()
			local string_ = "Expected"
			local printLabel = getLabelPrinter(string_)
			expect(printLabel(string_)).to.equal("Expected: ")
		end)

		it("2 equal lengths", function()
			local stringExpected = "Expected value"
			local collectionType = "array"
			local stringReceived = string.format("Received %s", collectionType)
			local printLabel = getLabelPrinter(stringExpected, stringReceived)
			expect(printLabel(stringExpected)).to.equal("Expected value: ")
			expect(printLabel(stringReceived)).to.equal("Received array: ")
		end)

		it("2 unequal lengths", function()
			local stringExpected = "Expected value"
			local collectionType = "set"
			local stringReceived = string.format("Received %s", collectionType)
			local printLabel = getLabelPrinter(stringExpected, stringReceived)
			expect(printLabel(stringExpected)).to.equal("Expected value: ")
			expect(printLabel(stringReceived)).to.equal("Received set:   ")
		end)

		it("returns incorrect padding if inconsistent arg is shorter", function()
			local stringConsistent = "Expected"
			local stringInconsistent = "Received value"
			local stringInconsistentShorter = "Received set"
			local printLabel = getLabelPrinter(stringConsistent, stringInconsistent)
			expect(printLabel(stringConsistent)).to.equal("Expected:       ")
			expect(printLabel(stringInconsistentShorter)).to.equal("Received set:   ")
		end)

		it("throws if inconsistent arg is longer", function()
			local stringConsistent = "Expected"
			local stringInconsistent = "Received value"
			local stringInconsistentLonger = "Received string"
			local printLabel = getLabelPrinter(stringConsistent, stringInconsistent)
			expect(printLabel(stringConsistent)).to.equal("Expected:       ")
			expect(function()
				printLabel(stringInconsistentLonger)
			end).to.throw("Cannot print label for string with length larger than the max allowed of 14")
		end)
	end)

	-- We don't have chalk library so we aren't able to match specific colors
	-- so we simplify the tests to just look at the passing cases where the
	-- colors "would be" aligned
	describe("matcherHint", function()
		it("expectedColor", function()
			local function expectedColor(arg: string): string
				return arg
			end
			local expectedArgument = "n"
			local received = matcherHint(
				"toHaveBeenNthCalledWith",
				"jest.fn()",
				expectedArgument,
				{expectedColor = expectedColor, secondArgument = "...expected"}
			)

			local substringNegative = expectedArgument
			expect(string.match(received, substringNegative)).never.to.equal(nil)
		end)

		it("receivedColor", function()
			local receivedColor = tostring
			local receivedArgument = "received"
			local received = matcherHint("toMatchSnapshot", receivedArgument, "", {
				receivedColor = receivedColor,
			})

			local substringPositive = receivedColor(receivedArgument)

			expect(string.match(received, substringPositive)).never.to.equal(nil)
		end)

		it("secondArgumentColor", function()
			local secondArgumentColor = tostring
			local secondArgument = "hint"
			local received = matcherHint("toMatchSnapshot", nil, "properties", {
				secondArgument = secondArgument,
				secondArgumentColor = secondArgumentColor,
			})

			local substringPositive = secondArgumentColor(secondArgument)

			expect(string.match(received, substringPositive)).never.to.equal(nil)
		end)
	end)
end