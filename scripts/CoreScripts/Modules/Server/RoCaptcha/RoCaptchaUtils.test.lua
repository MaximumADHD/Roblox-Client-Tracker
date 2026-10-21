local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local RoCaptchaUtils = require(script.Parent.RoCaptchaUtils)

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
end)
