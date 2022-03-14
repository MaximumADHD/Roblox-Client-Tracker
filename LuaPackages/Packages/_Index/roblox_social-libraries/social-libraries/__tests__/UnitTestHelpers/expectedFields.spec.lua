return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local expectedFields = require(script.Parent.expectedFields)
	local VALID_FIELDS = { "hello", "world" }

	describe("WHEN no fields are missing and none are extra", function()
		it("SHOULD not throw", function()
			local mock = {
				hello = true,
				world = true,
			}

			jestExpect(function()
				expectedFields(mock, VALID_FIELDS)
			end).never.toThrow()
		end)
	end)

	describe("WHEN missing a field", function()
		it("SHOULD throw", function()
			local mock = {
				hello = true,
				world = nil,
			}

			jestExpect(function()
				expectedFields(mock, VALID_FIELDS)
			end).toThrow()
		end)
	end)

	describe("WHEN a field is extra", function()
		it("SHOULD throw", function()
			local mock = {
				hello = true,
				world = true,
				foo = true,
			}

			jestExpect(function()
				expectedFields(mock, VALID_FIELDS)
			end).toThrow()
		end)
	end)
end
