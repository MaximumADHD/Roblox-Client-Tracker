return function()
	local ContainerSlotSignal = require(script.Parent.ContainerSlotSignal)
	local Constants = require(script.Parent.Parent.Unibar.Constants)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local TEST_VALUE_1 = 3
	local TEST_VALUE_2 = 5
	local TEST_VALUE_3 = 6
	local TEST_VALUE_4 = 100

	describe("ContainerSlotSignal", function()
		it("will set and get a same value", function()
			local signal = ContainerSlotSignal.new(TEST_VALUE_1)
			expect(signal:get()).toBe(TEST_VALUE_1)
		end)

		it("will trigger an event upon value change", function()
			local count = 0
			local signal = ContainerSlotSignal.new(TEST_VALUE_1)

			signal:connect(function()
				expect(signal:get()).toBe(TEST_VALUE_2)
				count = count + 1
			end)

			signal:requestSlots(TEST_VALUE_2)
			signal:requestSlots(TEST_VALUE_2)
			signal:requestSlots(TEST_VALUE_2)

			expect(count).toBe(1)
		end)

		it("can disconnect a signal", function()
			local count = 0
			local signal = ContainerSlotSignal.new(TEST_VALUE_3)

			local conn = signal:connect(function()
				expect(signal:get()).toBe(TEST_VALUE_2)
				count = count + 1
			end)

			signal:requestSlots(TEST_VALUE_2)
			conn:disconnect()

			signal:requestSlots(TEST_VALUE_3)

			expect(count).toBe(1)
		end)

		it("update constraints is a no-op if constraints unchanged", function()
			local count = 0
			local signal = ContainerSlotSignal.new(TEST_VALUE_3)

			local conn = signal:connect(function()
				count = count + 1
			end)

			signal:updateConstraints()

			expect(signal:get()).toBe(TEST_VALUE_3)
			expect(count).toBe(0)
		end)

		it("confirm size is capped at device constraint value", function()
			local signal = ContainerSlotSignal.new(TEST_VALUE_4)
			expect(signal:get()).toBe(Constants.NON_MOBILE_SLOTS - Constants.TOGGLE_SLOTS)

			signal:requestSlots(TEST_VALUE_4 + 1)
			expect(signal:get()).toBe(Constants.NON_MOBILE_SLOTS - Constants.TOGGLE_SLOTS)
		end)
	end)
end
