return function()
	local postPurchaseWarningAcknowledge = require(script.Parent.postPurchaseWarningAcknowledge)

	it("should convert enum to str (ConfirmedU13PaymentModal)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13PaymentModal
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).to.equal("ConfirmedU13PaymentModal")
	end)

	it("should convert enum to str (ConfirmedU13MonthlyThreshold1Modal)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold1Modal
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).to.equal("ConfirmedU13MonthlyThreshold1Modal")
	end)

	it("should convert enum to str (ConfirmedU13MonthlyThreshold2Modal)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold2Modal
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).to.equal("ConfirmedU13MonthlyThreshold2Modal")
	end)

	it("should convert enum to str (ConfirmedParentalConsentWarningPaymentModal13To17)", function()
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedParentalConsentWarningPaymentModal13To17
		local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
		expect(userActionStr).to.equal("ConfirmedParentalConsentWarningPaymentModal13To17")
	end)

	it("should call correct network method with correct params (ConfirmedU13PaymentModal)", function()
		local callCount = 0
		local userStrParam = nil

		local network = {
			postPurchaseWarningAcknowledge = function(userAction: string)
				callCount += 1
				userStrParam = userAction
			end
		}
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13PaymentModal

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(callCount).to.equal(1)
		expect(userStrParam).to.equal("ConfirmedU13PaymentModal")
	end)

	it("should call correct network method with correct params (ConfirmedU13MonthlyThreshold1Modal)", function()
		local callCount = 0
		local userStrParam = nil

		local network = {
			postPurchaseWarningAcknowledge = function(userAction: string)
				callCount += 1
				userStrParam = userAction
			end
		}
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold1Modal

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(callCount).to.equal(1)
		expect(userStrParam).to.equal("ConfirmedU13MonthlyThreshold1Modal")
	end)

	it("should call correct network method with correct params (ConfirmedU13MonthlyThreshold2Modal)", function()
		local callCount = 0
		local userStrParam = nil

		local network = {
			postPurchaseWarningAcknowledge = function(userAction: string)
				callCount += 1
				userStrParam = userAction
			end
		}
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold2Modal

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(callCount).to.equal(1)
		expect(userStrParam).to.equal("ConfirmedU13MonthlyThreshold2Modal")
	end)

	it("should call correct network method with correct params (ConfirmedParentalConsentWarningPaymentModal13To17)", function()
		local callCount = 0
		local userStrParam = nil

		local network = {
			postPurchaseWarningAcknowledge = function(userAction: string)
				callCount += 1
				userStrParam = userAction
			end
		}
		local userAction = postPurchaseWarningAcknowledge.UserActionType.ConfirmedParentalConsentWarningPaymentModal13To17

		postPurchaseWarningAcknowledge.Post(network, userAction)
		expect(callCount).to.equal(1)
		expect(userStrParam).to.equal("ConfirmedParentalConsentWarningPaymentModal13To17")
	end)
end
