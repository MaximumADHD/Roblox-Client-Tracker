--!nocheck
-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/toThrowMatchers.test.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

return function()
	local Workspace = script.Parent.Parent
	local Packages = Workspace.Parent.Parent.Parent

	local Error = require(Packages.LuauPolyfill).Error
	local RegExp = require(Packages.LuauPolyfill).RegExp
	local extends = require(Packages.LuauPolyfill).extends

	local snapshots = require(script.Parent.__snapshots__['toThrowMatchers.snap'])

	-- deviation: omitted alignedAnsiStyleSerializer import

	local jestExpect = require(Workspace)

	local CustomError = extends(Error, "CustomError", function(self, message)
		self.message = message
		self.name = 'Error'
		self.stack = '  at jestExpect' ..
			' (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)'
	end)

	local matchers = {'toThrowError', 'toThrow'}

	for _, toThrow in ipairs(matchers) do
		describe(toThrow, function()
			local Err = extends(CustomError, "Err", function(self, message)
				self.name = "Error"
				self.message = message
				self.stack = '  at jestExpect' ..
					' (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)'
			end)
			local Err2 = extends(CustomError, "Err2", function(self, message)
				self.name = "Error"
				self.message = message
				self.stack = '  at jestExpect' ..
					' (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)'
			end)

			it('to throw or not to throw', function()
				jestExpect(function() error(CustomError('apple')) end)[toThrow]()
				jestExpect(function() end).never[toThrow]()
			end)

			describe('substring', function()
				it('passes', function()
					jestExpect(function()
						error(CustomError('apple'))
					end)[toThrow]('apple')
					jestExpect(function()
						error(CustomError('banana'))
					end).never[toThrow]('apple')
				end)

				it('did not throw at all', function()
					expect(function()
						jestExpect(function() end)[toThrow]('apple')
					end).to.throw(snapshots[toThrow .. ' substring did not throw at all 1'])
				end)

				it('threw, but message did not match (error)', function()
					expect(function()
						jestExpect(function()
							error(CustomError('apple'))
						end)[toThrow]('banana')
					end).to.throw(snapshots[toThrow .. ' substring threw, but message did not match (error) 1'])
				end)

				it('threw, but message did not match (non-error falsey)', function()
					expect(function()
						jestExpect(function()
							error('')
						end)[toThrow]('Server Error')
					end).to.throw(snapshots[toThrow .. ' substring threw, but message did not match (non-error falsey) 1'])
				end)

				it('properly escapes strings when matching against errors', function()
					jestExpect(function()
						error(Error('"this"? throws.'))
					end)[toThrow]('"this"? throws.')
				end)

				it('threw, but message should not match (error)', function()
					expect(function()
						jestExpect(function()
							error(CustomError('Invalid array length'))
						end).never[toThrow]('array')
					end).to.throw(snapshots[toThrow .. ' substring threw, but message should not match (error) 1'])
				end)

				it('threw, but message should not match (non-error truthy)', function()
					expect(function()
						jestExpect(function()
							error('Internal Server Error')
						end).never[toThrow]('Server Error')
					end).to.throw(snapshots[toThrow .. ' substring threw, but message should not match (non-error truthy) 1'])
				end)
			end)

			describe('regexp', function()
				it('passes', function()
					jestExpect(function()
						error(CustomError('apple'))
					end)[toThrow](RegExp("apple"))
					jestExpect(function()
						error(CustomError('banana'))
					end).never[toThrow](RegExp("apple"))
					jestExpect(function() end).never[toThrow](RegExp("apple"))
				end)

				it('did not throw at all', function()
					expect(function()
						jestExpect(function() end)[toThrow](RegExp("apple"))
					end).to.throw(snapshots[toThrow .. ' regexp did not throw at all 1'])
				end)

				it('threw, but message did not match (error)', function()
					expect(function()
						jestExpect(function()
							error(CustomError('apple'))
						end)[toThrow](RegExp("banana"))
					end).to.throw(snapshots[toThrow .. ' regexp threw, but message did not match (error) 1'])
				end)

				-- deviation: The following test prints "0" instead of 0
				-- because the error string that's reported by lua when you do
				-- error(0) is indistinguishable from error("0")
				-- similar deviations hold for other tests that error integers
				it('threw, but message did not match (non-error falsey)', function()
					expect(function()
						jestExpect(function()
							error(0)
						end)[toThrow](RegExp('^[123456789]\\d*'))
					end).to.throw(snapshots[toThrow .. ' regexp threw, but message did not match (non-error falsey) 1'])
				end)

				it('threw, but message should not match (error)', function()
					expect(function()
						jestExpect(function()
							error(CustomError('Invalid array length'))
						end).never[toThrow](RegExp(" array "))
					end).to.throw(snapshots[toThrow .. ' regexp threw, but message should not match (error) 1'])
				end)

				-- deviation: the following test prints "404" instead of 404 in
				-- the output for the same reason as above
				it('threw, but message should not match (non-error truthy)', function()
					expect(function()
						jestExpect(function()
							error(404)
						end).never[toThrow](RegExp('^[123456789]\\d*'))
					end).to.throw(snapshots[toThrow .. ' regexp threw, but message should not match (non-error truthy) 1'])
				end)
			end)

			describe('error class', function()
				local SubErr = extends(Err, "SubErr", function(self, message)
					self.message = message
					self.name = "SubErr"
					self.stack = '  at jestExpect' ..
						' (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)'
				end)
				local SubSubErr = extends(SubErr, "SubSubErr", function(self, message)
					self.message = message
					self.name = "SubSubErr"
					self.stack = '  at jestExpect' ..
						' (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)'
				end)

				it('passes', function()
					jestExpect(function()
						error(Err())
					end)[toThrow](Err)
					jestExpect(function()
						error(Err())
					end)[toThrow](CustomError)
					jestExpect(function()
						error(Err())
					end).never[toThrow](Err2)
					jestExpect(function() end).never[toThrow](Err)
				end)

				it('did not throw at all', function()
					expect(function()
						-- FIXME in REVIEW: upstream writes 'expect' but the intention must have been to write jestExpect
						jestExpect(function() end)[toThrow](Err)
					end).to.throw(snapshots[toThrow .. ' error class did not throw at all 1'])
				end)

				it('threw, but class did not match (error)', function()
					expect(function()
						jestExpect(function()
							error(Err('apple'))
						end)[toThrow](Err2)
					end).to.throw(snapshots[toThrow .. ' error class threw, but class did not match (error) 1'])
				end)

				it('threw, but class did not match (non-error falsey)', function()
					expect(function()
						jestExpect(function()
							error(nil)
						end)[toThrow](Err2)
					end).to.throw(snapshots[toThrow .. ' error class threw, but class did not match (non-error falsey) 1'])
				end)

				it('threw, but class should not match (error)', function()
					expect(function()
						jestExpect(function()
							error(Err('apple'))
						end).never[toThrow](Err)
					end).to.throw(snapshots[toThrow .. ' error class threw, but class should not match (error) 1'])
				end)

				it('threw, but class should not match (error subclass)', function()
					expect(function()
						jestExpect(function()
							error(SubErr('apple'))
						end).never[toThrow](Err)
					end).to.throw(snapshots[toThrow .. ' error class threw, but class should not match (error subclass) 1'])
				end)

				it('threw, but class should not match (error subsubclass)', function()
					expect(function()
						jestExpect(function()
							error(SubSubErr('apple'))
						end).never[toThrow](Err)
					end).to.throw(snapshots[toThrow .. ' error class threw, but class should not match (error subsubclass) 1'])
				end)
			end)

			describe('error-message', function()
				local ErrorMessage = {}

				function ErrorMessage.new(_, message)
					local self = {
						message = message
					}
					return setmetatable(self, ErrorMessage)
				end

				setmetatable(ErrorMessage, {
					__call = ErrorMessage.new,
				})

				local expected = ErrorMessage('apple')

				describe('pass', function()
					it('isNot false', function()
						jestExpect(function()
							error(ErrorMessage('apple'))
						end)[toThrow](expected)
					end)

					it('isNot true', function()
						jestExpect(function()
							error(ErrorMessage('banana'))
						end).never[toThrow](expected)
					end)
				end)

				describe('fail', function()
					it('isNot false', function()
						expect(function()
							jestExpect(function()
								error(ErrorMessage('banana'))
							end)[toThrow](expected)
						end).to.throw(snapshots[toThrow .. ' error-message fail isNot false 1'])
					end)

					it('isNot true', function()
						local message = 'Invalid array length'
						expect(function()
							jestExpect(function()
								error(ErrorMessage(message))
							end).never[toThrow]({message = message})
						end).to.throw(snapshots[toThrow .. ' error-message fail isNot true 1'])
					end)

					it('multiline diff highlight incorrect expected space', function()
						local a = "There is no route defined for key Settings. \nMust be one of: 'Home'"
						local b = "There is no route defined for key Settings.\nMust be one of: 'Home'"
						expect(function()
							jestExpect(function()
								error(ErrorMessage(b))
							end)[toThrow]({message = a})
						end).to.throw(snapshots[toThrow .. ' error-message fail multiline diff highlight incorrect expected space 1'])
					end)
				end)
			end)

			describe('asymmetric', function()
				describe('any-Class', function()
					describe('pass', function()
						it('isNot false', function()
							jestExpect(function()
								error(Err('apple'))
							end)[toThrow](jestExpect.any(Err))
						end)

						it('isNot true', function()
							jestExpect(function()
								error(Err('apple'))
							end).never[toThrow](jestExpect.any(Err2))
						end)
					end)

					describe('fail', function()
						it('isNot false', function()
							expect(function()
								jestExpect(function()
									error(Err('apple'))
								end)[toThrow](jestExpect.any(Err2))
							end).to.throw(snapshots[toThrow .. ' asymmetric any-Class fail isNot false 1'])
						end)

						it('isNot true', function()
							expect(function()
								jestExpect(function()
									error(Err('apple'))
								end).never[toThrow](jestExpect.any(Err))
							end).to.throw(snapshots[toThrow .. ' asymmetric any-Class fail isNot true 1'])
						end)
					end)
				end)

				describe('anything', function()
					describe('pass', function()
						it('isNot false', function()
							jestExpect(function()
								error(CustomError('apple'))
							end)[toThrow](jestExpect.anything())
						end)

						-- deviation: skipped test because we have no undefined
						-- type and nil does not match expect.anything()
						itSKIP('isNot true', function()
							jestExpect(function() end).never[toThrow](expect.anything())
							jestExpect(function()
								error(nil)
							end).never[toThrow](jestExpect.anything())
						end)
					end)

					describe('fail', function()
						-- We have to skip this for now since we are now
						-- returning an Error with a stack trace for all
						-- objects so that would not throw an error for
						-- jestExpect.anything()
						itSKIP('isNot false', function()
							expect(function()
								jestExpect(function()
									error(nil)
								end)[toThrow](jestExpect.anything())
							end).to.throw(snapshots[toThrow .. ' asymmetric anything fail isNot false 1'])
						end)

						it('isNot true', function()
							expect(function()
								jestExpect(function()
									error(CustomError('apple'))
								end).never[toThrow](jestExpect.anything())
							end).to.throw(snapshots[toThrow .. ' asymmetric anything fail isNot true 1'])
						end)
					end)

					describe('no-symbol', function()
						-- // Test serialization of asymmetric matcher which has no property:
						-- // this.$$typeof = Symbol.for('jest.asymmetricMatcher')

						local matchError = {
							asymmetricMatch = function(self, received)
								return received ~= nil and
									received.name == 'Error'
							end
						}

						local matchNotError = {
							asymmetricMatch = function(self, received)
								return received ~= nil and
									received.name ~= 'Error'
							end
						}

						describe('pass', function()
							it('isNot false', function()
								jestExpect(function()
									error(CustomError('apple'))
								end)[toThrow](matchError)
							end)

							it('isNot true', function()
								jestExpect(function()
									error(CustomError('apple'))
								end).never[toThrow](matchNotError)
							end)
						end)

						describe('fail', function()
							it('isNot false', function()
								expect(function()
									jestExpect(function()
										error(CustomError('apple'))
									end)[toThrow](matchNotError)
								end).to.throw(snapshots[toThrow .. ' asymmetric no-symbol fail isNot false 1'])
							end)

							it('isNot true', function()
								expect(function()
									jestExpect(function()
										error(CustomError('apple'))
									end).never[toThrow](matchError)
								end).to.throw(snapshots[toThrow .. ' asymmetric no-symbol fail isNot true 1'])
							end)
						end)
					end)

					describe('objectContaining', function()
						local matchError = jestExpect.objectContaining({
							name = 'Error'
						})
						local matchNotError = jestExpect.objectContaining({
							name = 'NotError'
						})

						describe('pass', function()
							it('isNot false', function()
								jestExpect(function()
									error(CustomError('apple'))
								end)[toThrow](matchError)
							end)

							it('isNot true', function()
								jestExpect(function()
									error(CustomError('apple'))
								end).never[toThrow](matchNotError)
							end)
						end)

						describe('fail', function()
							it('isNot false', function()
								expect(function()
									jestExpect(function()
										error(CustomError('apple'))
									end)[toThrow](matchNotError)
								end).to.throw(snapshots[toThrow .. ' asymmetric objectContaining fail isNot false 1'])
							end)

							it('isNot true', function()
								expect(function()
									jestExpect(function()
										error(CustomError('apple'))
									end).never[toThrow](matchError)
								end).to.throw(snapshots[toThrow .. ' asymmetric objectContaining fail isNot true 1'])
							end)
						end)
					end)
				end)
			end)
			-- deviation: we skip the entire promise/async block for now since
			-- we don't have promise/async functionality for matchers or
			-- throwingMatchers in current release
			describe('promise/async throws if Error-like object is returned', function()
				SKIP()
			end)

			describe('expected is undefined', function()
				it('threw, but should not have (non-error falsey)', function()
					expect(function()
						jestExpect(function()
							error(nil)
						end).never[toThrow]()
					end).to.throw(snapshots[toThrow .. ' expected is undefined threw, but should not have (non-error falsey) 1'])
				end)
			end)

			it('invalid arguments', function()
				expect(function()
					jestExpect(function() end).never[toThrow](111)
				end).to.throw(snapshots[toThrow .. ' invalid arguments 1'])
			end)

			it('invalid actual', function()
				expect(function()
					jestExpect('a string')[toThrow]()
				end).to.throw(snapshots[toThrow .. ' invalid actual 1'])
			end)
		end)
	end

	describe("Lua tests", function()
		it("works well for single errors", function()
			jestExpect(function()
				error("I am erroring!")
			end).toThrow("I am erroring!")

			jestExpect(function()
				jestExpect(function()
					error("I am erroring!")
				end).toThrow("I am erroring?")
			end).toThrow()

			-- If we uncomment these expect calls we get a weird looking result,
			-- would love some advice on how to change it/simplify. I think this
			-- could also benefit from the ANSI colors that Raymond is working on
			-- since it would make the result clearer
			-- jestExpect(function()
			-- 	jestExpect(function()
			-- 		error("I am erroring!")
			-- 	end).toThrow("I am erroring?")
			-- end).toThrow("asdf")
		end)

		local function error1()
			error(Error(""))
		end

		local function error2()
			error("")
		end

		local function test1()
			error1()
		end

		local function test2()
			error2()
		end

		--[[
			The following tests make use of a snapshot to check the start of the test
			and then use Regex to try to check the stack trace. The reason for splitting
			up the test instead of including everything in the snapshot is because the file
			numbers would have to be hard coded and with any future changes to this file,
			the tests would break.

			The first test is commented with some more information
		]]
		it("prints the stack trace for Lua Error error", function()
			-- Checking the snapshot
			jestExpect(function()
				jestExpect(function() test1() end).never.toThrow()
			end).toThrow(snapshots['Lua tests correctly prints the stack trace for Lua Error error 1'])

			-- Using Regex to test the stack trace for three lines with the
			-- first line reporting info on function error1
			jestExpect(function()
				jestExpect(function() test1() end).never.toThrow()
			end).toThrow(RegExp("Expect.__tests__.toThrowMatchers.spec:[\\d]+ function error1\n[^\n]+\n[^\n]+$"))

			-- Using regex to test for a line reporting info on function test1
			jestExpect(function()
				jestExpect(function() test1() end).never.toThrow()
			end).toThrow(RegExp("Expect.__tests__.toThrowMatchers.spec:[\\d]+ function test1"))
		end)

		it("prints the stack trace for Lua string error", function()
			jestExpect(function()
				jestExpect(function() test2() end).never.toThrow()
			end).toThrow(snapshots['Lua tests correctly prints the stack trace for Lua string error 1'])

			jestExpect(function()
				jestExpect(function() test2() end).never.toThrow()
			end).toThrow(RegExp("Expect.__tests__.toThrowMatchers.spec:[\\d]+ function error2\n[^\n]+\n[^\n]+$"))

			jestExpect(function()
				jestExpect(function() test2() end).never.toThrow()
			end).toThrow(RegExp("Expect.__tests__.toThrowMatchers.spec:[\\d]+ function test2"))
		end)

		it("prints the stack trace for Lua string error 2", function()
			jestExpect(function()
				jestExpect(function() test2() end).toThrow("wrong information")
			end).toThrow(snapshots['Lua tests correctly prints the stack trace for Lua string error 2'])

			jestExpect(function()
				jestExpect(function() test2() end).never.toThrow()
			end).toThrow(RegExp("Expect.__tests__.toThrowMatchers.spec:[\\d]+ function error2\n[^\n]+\n[^\n]+$"))

			jestExpect(function()
				jestExpect(function() test2() end).never.toThrow()
			end).toThrow(RegExp("Expect.__tests__.toThrowMatchers.spec:[\\d]+ function test2"))
		end)

		it("matches Error", function()
			jestExpect(function() error(Error("error msg")) end).toThrow(Error("error msg"))
			jestExpect(function() error(CustomError("error msg")) end).toThrow(CustomError("error msg"))
			jestExpect(function() error(CustomError("error msg")) end).toThrow(Error("error msg"))
			-- this would match in upstream Jest even though it is somewhat nonsensical
			jestExpect(function() error(Error("error msg")) end).toThrow(CustomError("error msg"))
		end)

		it("matches empty Error", function()
			jestExpect(function() error(Error()) end).toThrow(Error())
		end)

		-- deviation: sanity check test case
		it("cleans stack trace and prints correct files", function()
			local function func2()
				-- this line should error
				return nil + 1
			end

			jestExpect(function()
				jestExpect(function() func2() end).never.toThrow()
			end).toThrow(RegExp("toThrowMatchers.spec:[\\d]+ function func2"))

			-- 2 lines in stack trace
			jestExpect(function()
				jestExpect(function() func2() end).never.toThrow()
			end).toThrow(RegExp("LoadedCode.[^\n]+\n[^\n]+$"))
		end)
	end)
end