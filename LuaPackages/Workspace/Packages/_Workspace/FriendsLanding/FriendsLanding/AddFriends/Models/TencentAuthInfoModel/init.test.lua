local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)
local Mock = devDependencies.Mock

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local TencentAuthInfoModel = require(script.Parent)

describe("TencentAuthInfoModel", function()
	it("SHOULD set fields without errors", function()
		local mockModel = {
			type = "Wechat",
			appType = "PlayerMobile",
			userAccessToken = "ocxI10avZgx0mq4akAnpjsmOby8Y",
			userOpenId = "OYXxlQviprbpiBGBRng1DdqIe7",
		}

		local authInfo = TencentAuthInfoModel.new(mockModel)

		expect(authInfo).toEqual(expect.any("table"))
		expect(authInfo.type).toEqual("Wechat")
		expect(authInfo.appType).toEqual("PlayerMobile")
		expect(authInfo.userAccessToken).toEqual("ocxI10avZgx0mq4akAnpjsmOby8Y")
		expect(authInfo.userOpenId).toEqual("OYXxlQviprbpiBGBRng1DdqIe7")
	end)

	it("SHOULD mock object correctly", function()
		local mockObject = TencentAuthInfoModel.mock()
		expect((TencentAuthInfoModel.isValid(mockObject))).toEqual(true)
	end)

	it("SHOULD validate validate object correctly", function()
		local validateMalformedObject = function(malformedObject)
			expect((TencentAuthInfoModel.isValid(malformedObject))).toEqual(false)
		end

		-- make some of the field malformed
		local magicMock = Mock.MagicMock.new
		validateMalformedObject(magicMock({ type = nil }))
		validateMalformedObject(magicMock({ appType = nil }))
		validateMalformedObject(magicMock({ userAccessToken = nil }))
		validateMalformedObject(magicMock({ userOpenId = nil }))
	end)
end)
