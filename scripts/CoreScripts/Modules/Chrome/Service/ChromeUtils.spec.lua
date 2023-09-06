return function()
	local ChromeUtils = require(script.Parent.ChromeUtils)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local TEST_VALUE_1 = 123
	local TEST_VALUE_2 = 321
	local TEST_VALUE_3 = 300

	describe("ObservableValue", function()
		it("will set and get a same value", function()
			local val = ChromeUtils.ObservableValue.new(TEST_VALUE_1)

			expect(val:get()).toBe(TEST_VALUE_1)

			val:set(TEST_VALUE_2)

			expect(val:get()).toBe(TEST_VALUE_2)
		end)

		it("will trigger an event upon value change", function()
			local count = 0
			local val = ChromeUtils.ObservableValue.new(TEST_VALUE_1)

			val:connect(function()
				expect(val:get()).toBe(TEST_VALUE_2)
				count = count + 1
			end)

			val:set(TEST_VALUE_2)
			val:set(TEST_VALUE_2)
			val:set(TEST_VALUE_2)

			expect(count).toBe(1)
		end)

		it("can disconnect a signal", function()
			local count = 0
			local val = ChromeUtils.ObservableValue.new(TEST_VALUE_1)

			local conn = val:connect(function()
				expect(val:get()).toBe(TEST_VALUE_2)
				count = count + 1
			end)

			val:set(TEST_VALUE_2)
			conn:disconnect()

			val:set(TEST_VALUE_3)

			expect(count).toBe(1)
		end)
	end)
end
