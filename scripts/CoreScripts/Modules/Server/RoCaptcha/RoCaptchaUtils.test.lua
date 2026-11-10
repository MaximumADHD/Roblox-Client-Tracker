local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local FFlagRoCaptchaReturnToServerInstance =
	require(script.Parent.Parent.Parent.Common.Flags.FFlagRoCaptchaReturnToServerInstance)

local RoCaptchaUtils = require(script.Parent.RoCaptchaUtils)

local SERVER_INSTANCE_ID = "0123abcd-4567-89ef-ABCD-0123456789ef"

describe("RoCaptchaUtils.isUniverseAllowed", function()
	it("matches a listed universe id, ignoring surrounding whitespace", function()
		expect(RoCaptchaUtils.isUniverseAllowed("111, 222 ,333", 222)).toBe(true)
	end)

	it("rejects an unlisted universe id", function()
		expect(RoCaptchaUtils.isUniverseAllowed("111,222", 333)).toBe(false)
	end)

	it("rejects every universe when the list is empty", function()
		expect(RoCaptchaUtils.isUniverseAllowed("", 0)).toBe(false)
	end)
end)

describe("RoCaptchaUtils.parseLaunchData", function()
	local function encode(value)
		return HttpService:JSONEncode(value)
	end

	it("returns the challenge id and numeric place id", function()
		local launchData = encode({ challengeId = "abc", desiredPlaceId = "123" })
		expect(RoCaptchaUtils.parseLaunchData(launchData)).toEqual({
			challengeId = "abc",
			desiredPlaceId = 123,
		})
	end)

	it("returns nil for missing or malformed launch data", function()
		expect(RoCaptchaUtils.parseLaunchData(nil)).toBeNil()
		expect(RoCaptchaUtils.parseLaunchData("")).toBeNil()
		expect(RoCaptchaUtils.parseLaunchData("not json")).toBeNil()
	end)

	it("returns nil without a challenge id", function()
		expect(RoCaptchaUtils.parseLaunchData(encode({ desiredPlaceId = 123 }))).toBeNil()
	end)

	it("returns nil for an invalid place id", function()
		expect(RoCaptchaUtils.parseLaunchData(encode({ challengeId = "abc", desiredPlaceId = 0 }))).toBeNil()
		expect(RoCaptchaUtils.parseLaunchData(encode({ challengeId = "abc", desiredPlaceId = 1.5 }))).toBeNil()
		expect(RoCaptchaUtils.parseLaunchData(encode({ challengeId = "abc", desiredPlaceId = "x" }))).toBeNil()
	end)

	if FFlagRoCaptchaReturnToServerInstance then
		it("returns a valid server instance id", function()
			local launchData =
				encode({ challengeId = "abc", desiredPlaceId = 123, serverInstanceId = SERVER_INSTANCE_ID })
			expect(RoCaptchaUtils.parseLaunchData(launchData)).toEqual({
				challengeId = "abc",
				desiredPlaceId = 123,
				serverInstanceId = SERVER_INSTANCE_ID,
			})
		end)

		it("drops an empty or malformed server instance id without rejecting the launch data", function()
			local invalidIds: { any } = { "", "not-a-guid", 42 }
			for _, serverInstanceId in invalidIds do
				local launchData =
					encode({ challengeId = "abc", desiredPlaceId = 123, serverInstanceId = serverInstanceId })
				expect(RoCaptchaUtils.parseLaunchData(launchData)).toEqual({
					challengeId = "abc",
					desiredPlaceId = 123,
				})
			end
		end)
	end

	if not FFlagRoCaptchaReturnToServerInstance then
		it("ignores the server instance id", function()
			local launchData =
				encode({ challengeId = "abc", desiredPlaceId = 123, serverInstanceId = SERVER_INSTANCE_ID })
			expect(RoCaptchaUtils.parseLaunchData(launchData)).toEqual({
				challengeId = "abc",
				desiredPlaceId = 123,
			})
		end)
	end
end)
