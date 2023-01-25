return function()
	local Root = script.Parent.Parent

	local PaymentPlatform = require(Root.Enums.PaymentPlatform)

	local getPaymentFromPlatformLegacy = require(script.Parent.getPaymentFromPlatformLegacy)

	it("should return correctly when on XBoxOne", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.XBoxOne, false, false)).to.equal(PaymentPlatform.Xbox)
	end)

	it("should return correctly when on IOS", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.IOS, false, false)).to.equal(PaymentPlatform.Apple)
	end)

	it("should return correctly when on IOS (Luobu)", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.IOS, true, false)).to.equal(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Windows", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Windows, false, false)).to.equal(PaymentPlatform.Web)
	end)

	it("should return correctly when on OSX", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.OSX, false, false)).to.equal(PaymentPlatform.Web)
	end)

	it("should return correctly when on Linux", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Linux, false, false)).to.equal(PaymentPlatform.Web)
	end)
	
	it("should return correctly when on Android", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, false, false)).to.equal(PaymentPlatform.Google)
	end)

	it("should return correctly when on Android (Luobu)", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, true, false)).to.equal(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Amazon", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, false, true)).to.equal(PaymentPlatform.Amazon)
	end)

	it("should return correctly when on Amazon (Luobu)", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, true, true)).to.equal(PaymentPlatform.Midas)
	end)

	it("should return correctly when on UWP", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.UWP, false, false)).to.equal(PaymentPlatform.UWP)
	end)

end
