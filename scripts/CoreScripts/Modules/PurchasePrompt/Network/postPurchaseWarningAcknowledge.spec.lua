return function()
	local postPurchaseWarningAcknowledge = require(script.Parent.postPurchaseWarningAcknowledge)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	it("should convert enum to str (ConfirmedU13PaymentModal)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13PaymentModal
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).toBe("ConfirmedU13PaymentModal")
	end)

	it("should convert enum to str (ConfirmedU13MonthlyThreshold1Modal)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold1Modal
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).toBe("ConfirmedU13MonthlyThreshold1Modal")
	end)

	it("should convert enum to str (ConfirmedU13MonthlyThreshold2Modal)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold2Modal
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).toBe("ConfirmedU13MonthlyThreshold2Modal")
	end)

	it("should convert enum to str (ConfirmedParentalConsentWarningPaymentModal13To17)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedParentalConsentWarningPaymentModal13To17
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).toBe("ConfirmedParentalConsentWarningPaymentModal13To17")
	end)

	it("should call correct network method with correct params (ConfirmedU13PaymentModal)", function()
		local userStrParam = nil

		local mock, mockFn = jest.fn(function(userAction: string)
			userStrParam = userAction
		end)

		local network = { postPurchaseWarningAcknowledge = mockFn }
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13PaymentModal

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(mock).toHaveBeenCalledTimes(1)
		expect(userStrParam).toBe("ConfirmedU13PaymentModal")
	end)

	it("should call correct network method with correct params (ConfirmedU13MonthlyThreshold1Modal)", function()
		local userStrParam = nil
		local mock, mockFn = jest.fn(function(userAction: string)
			userStrParam = userAction
		end)

		local network = { postPurchaseWarningAcknowledge = mockFn }
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold1Modal

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(mock).toHaveBeenCalledTimes(1)
		expect(userStrParam).toBe("ConfirmedU13MonthlyThreshold1Modal")
	end)

	it("should call correct network method with correct params (ConfirmedU13MonthlyThreshold2Modal)", function()
		local userStrParam = nil
		local mock, mockFn = jest.fn(function(userAction: string)
			userStrParam = userAction
		end)

		local network = { postPurchaseWarningAcknowledge = mockFn }
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold2Modal

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(mock).toHaveBeenCalledTimes(1)
		expect(userStrParam).toBe("ConfirmedU13MonthlyThreshold2Modal")
	end)

	it("should call correct network method with correct params (ConfirmedParentalConsentWarningPaymentModal13To17)", function()
		local userStrParam = nil
		local mock, mockFn = jest.fn(function(userAction: string)
			userStrParam = userAction
		end)

		local network = { postPurchaseWarningAcknowledge = mockFn }
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedParentalConsentWarningPaymentModal13To17

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(mock).toHaveBeenCalledTimes(1)
		expect(userStrParam).toBe("ConfirmedParentalConsentWarningPaymentModal13To17")
	end)
end
