return function()
	local Root = script.Parent.Parent

	local PaymentPlatform = require(Root.Enums.PaymentPlatform)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local getCounterCombinations = require(script.Parent.getCounterCombinations)

	local function has_value (tab, val)
		for index, value in ipairs(tab) do
			if value == val then
				return true
			end
		end

		return false
	end

	it("should return correctly combinations with purchaseFlow and robuxAmount", function()
		local expectedCombinations = {}
		table.insert(expectedCombinations, "prefixpurchaseFlowcounterNameplatform")
		table.insert(expectedCombinations, "prefixpurchaseFlowcounterName500platform")

		local combinations = getCounterCombinations("prefix", "counterName", "platform", "purchaseFlow", 500)

		expect(combinations).toEqual(expectedCombinations)
	end)

	it("should return correctly combinations with purchaseFlow", function()
		local expectedCombinations = {}
		table.insert(expectedCombinations, "prefixpurchaseFlowcounterNameplatform")

		local combinations = getCounterCombinations("prefix", "counterName", "platform", "purchaseFlow", nil)

		expect(combinations).toEqual(expectedCombinations)
	end)

	it("should return correctly combinations with robuxAmount", function()
		local expectedCombinations = {}
		table.insert(expectedCombinations, "prefixcounterNameplatform")
		table.insert(expectedCombinations, "prefixcounterName500platform")

		local combinations = getCounterCombinations("prefix", "counterName", "platform", nil, 500)

		expect(combinations).toEqual(expectedCombinations)
	end)

	it("should return correctly combinations", function()
		local expectedCombinations = {}
		table.insert(expectedCombinations, "prefixcounterNameplatform")

		local combinations = getCounterCombinations("prefix", "counterName", "platform", nil, nil)

		expect(combinations).toEqual(expectedCombinations)
	end)
end
