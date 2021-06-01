return function()
	local expectedFields = require(script.Parent.expectedFields)
	local VALID_FIELDS = { "hello", "world" }

	describe("WHEN no fields are missing and none are extra", function()
		it("SHOULD not throw", function()
			local mock = {
				hello = true,
				world = true,
			}

			expect(function()
				expectedFields(mock, VALID_FIELDS)
			end).to.never.throw()
		end)
	end)

	describe("WHEN missing a field", function()
		it("SHOULD throw", function()
			local mock = {
				hello = true,
				world = nil,
			}

			expect(function()
				expectedFields(mock, VALID_FIELDS)
			end).to.throw()
		end)
	end)

	describe("WHEN a field is extra", function()
		it("SHOULD throw", function()
			local mock = {
				hello = true,
				world = true,
				foo = true,
			}

			expect(function()
				expectedFields(mock, VALID_FIELDS)
			end).to.throw()
		end)
	end)
end
