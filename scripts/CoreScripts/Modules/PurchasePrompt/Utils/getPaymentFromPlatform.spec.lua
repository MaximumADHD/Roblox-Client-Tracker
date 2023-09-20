return function()
	local Root = script.Parent.Parent
	local PaymentPlatform = require(Root.Enums.PaymentPlatform)
	local getPaymentFromPlatform = require(script.Parent.getPaymentFromPlatform)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should return correctly when on XBoxOne", function()
		expect(getPaymentFromPlatform(Enum.Platform.XBoxOne, false, false, false)).toBe(PaymentPlatform.Xbox)
	end)

	it("should return correctly when on IOS", function()
		expect(getPaymentFromPlatform(Enum.Platform.IOS, false, false, false)).toBe(PaymentPlatform.Apple)
	end)

	it("should return correctly when on IOS (Luobu)", function()
		expect(getPaymentFromPlatform(Enum.Platform.IOS, true, false, false)).toBe(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Windows", function()
		expect(getPaymentFromPlatform(Enum.Platform.Windows, false, false, false)).toBe(PaymentPlatform.Web)
	end)

	it("should return correctly when on OSX", function()
		expect(getPaymentFromPlatform(Enum.Platform.OSX, false, false, false)).toBe(PaymentPlatform.Web)
	end)

	it("should return correctly when on Linux", function()
		expect(getPaymentFromPlatform(Enum.Platform.Linux, false, false, false)).toBe(PaymentPlatform.Web)
	end)

	it("should return correctly when on Android", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, false, false, false)).toBe(PaymentPlatform.Google)
	end)

	it("should return correctly when on Android (Luobu)", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, true, false, false)).toBe(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Amazon", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, false, true, false)).toBe(PaymentPlatform.Amazon)
	end)

	it("should return correctly when on Amazon (Luobu)", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, true, true, false)).toBe(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Maquettes", function()
		expect(getPaymentFromPlatform(Enum.Platform.Android, false, false, true)).toBe(PaymentPlatform.Maquettes)
	end)

	it("should return correctly when on UWP", function()
		expect(getPaymentFromPlatform(Enum.Platform.UWP, false, false, false)).toBe(PaymentPlatform.UWP)
	end)
end
