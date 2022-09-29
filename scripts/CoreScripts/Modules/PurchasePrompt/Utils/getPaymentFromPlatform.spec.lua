return function()
	local Root = script.Parent.Parent

	local PaymentPlatform = require(Root.Enums.PaymentPlatform)

	local getPaymentFromPlatform = require(script.Parent.getPaymentFromPlatform)

	it("should return correctly when on XBoxOne", function()
		expect(getPaymentFromPlatform(Enum.Platform.XBoxOne, false, false)).to.equal(PaymentPlatform.Xbox)
	end)

	it("should return correctly when on IOS", function()
		expect(getPaymentFromPlatform(Enum.Platform.IOS, false, false)).to.equal(PaymentPlatform.Apple)
	end)

	it("should return correctly when on IOS (Luobu)", function()
		expect(getPaymentFromPlatform(Enum.Platform.IOS, true, false)).to.equal(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Windows", function()
		expect(getPaymentFromPlatform(Enum.Platform.Windows, false, false)).to.equal(PaymentPlatform.Web)
	end)

	it("should return correctly when on OSX", function()
		expect(getPaymentFromPlatform(Enum.Platform.OSX, false, false)).to.equal(PaymentPlatform.Web)
	end)

	it("should return correctly when on Linux", function()
		expect(getPaymentFromPlatform(Enum.Platform.Linux, false, false)).to.equal(PaymentPlatform.Web)
	end)
	
	it("should return correctly when on Android", function()
		expect(getPaymentFromPlatform(Enum.Platform.Linux, false, false)).to.equal(PaymentPlatform.Web)
	end)

	it("should return correctly when on Android (Luobu)", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, true, false)).to.equal(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Amazon", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, false, true)).to.equal(PaymentPlatform.Amazon)
	end)

	it("should return correctly when on Amazon (Luobu)", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, true, true)).to.equal(PaymentPlatform.Midas)
	end)
end
