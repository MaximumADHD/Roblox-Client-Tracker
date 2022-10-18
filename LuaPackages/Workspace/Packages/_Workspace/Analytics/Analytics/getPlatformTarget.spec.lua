return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest
	local getPlatformTargetImpl = require(script.Parent["getPlatformTarget.impl"])

	local DESKTOP_ENUMS = {
		Enum.Platform.Windows,
		Enum.Platform.OSX,
	}

	local CONSOLE_ENUMS = {
		Enum.Platform.XBox360,
		Enum.Platform.XBoxOne,
		Enum.Platform.PS3,
		Enum.Platform.PS4,
		Enum.Platform.WiiU,
	}

	local MOBILE_ENUMS = {
		Enum.Platform.IOS,
		Enum.Platform.Android,
		Enum.Platform.UWP,
	}

	local mockUserInputService = {
		GetPlatform = jest.fn(),
	}

	local getPlatformTarget = getPlatformTargetImpl(mockUserInputService :: any)

	afterEach(function()
		jest.resetAllMocks()
	end)

	it("should return 'client' for desktop enums", function()
		for _, enum in DESKTOP_ENUMS do
			mockUserInputService.GetPlatform.mockImplementation(function()
				return enum
			end)

			expect(getPlatformTarget()).toBe("client")
		end
	end)

	it("should return 'console' for console enums", function()
		for _, enum in CONSOLE_ENUMS do
			mockUserInputService.GetPlatform.mockImplementation(function()
				return enum
			end)

			expect(getPlatformTarget()).toBe("console")
		end
	end)

	it("should return 'mobile' for mobile enums", function()
		for _, enum in MOBILE_ENUMS do
			mockUserInputService.GetPlatform.mockImplementation(function()
				return enum
			end)

			expect(getPlatformTarget()).toBe("mobile")
		end
	end)
end
