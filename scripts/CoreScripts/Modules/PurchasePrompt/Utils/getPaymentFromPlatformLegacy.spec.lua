return function()
	local Root = script.Parent.Parent
	local PaymentPlatform = require(Root.Enums.PaymentPlatform)
	local getPaymentFromPlatformLegacy = require(script.Parent.getPaymentFromPlatformLegacy)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should return correctly when on XBoxOne", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.XBoxOne, false, false)).toBe(PaymentPlatform.Xbox)
	end)

	it("should return correctly when on IOS", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.IOS, false, false)).toBe(PaymentPlatform.Apple)
	end)

	it("should return correctly when on IOS (Luobu)", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.IOS, true, false)).toBe(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Windows", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Windows, false, false)).toBe(PaymentPlatform.Web)
	end)

	it("should return correctly when on OSX", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.OSX, false, false)).toBe(PaymentPlatform.Web)
	end)

	it("should return correctly when on Linux", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Linux, false, false)).toBe(PaymentPlatform.Web)
	end)

	it("should return correctly when on Android", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, false, false)).toBe(PaymentPlatform.Google)
	end)

	it("should return correctly when on Android (Luobu)", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, true, false)).toBe(PaymentPlatform.Midas)
	end)

	it("should return correctly when on Amazon", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, false, true)).toBe(PaymentPlatform.Amazon)
	end)

	it("should return correctly when on Amazon (Luobu)", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.Android, true, true)).toBe(PaymentPlatform.Midas)
	end)

	it("should return correctly when on UWP", function()
		expect(getPaymentFromPlatformLegacy(Enum.Platform.UWP, false, false)).toBe(PaymentPlatform.UWP)
	end)

end
