local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Rodux = require(Packages.Rodux)
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local ShareUrlReducer = require(script.Parent.ShareUrlReducer)

local DEFAULT_RESPONSE_BODY = {
	shortUrl = "www.bbc.co.uk",
	linkId = "123456",
}

beforeEach(function()
	createOrGetProfileShareUrl.Mock.reply(function()
		return {
			responseBody = DEFAULT_RESPONSE_BODY,
		}
	end)
end)

afterEach(function()
	createOrGetProfileShareUrl.Mock.clear()
end)

it("SHOULD return a function", function()
	jestExpect(ShareUrlReducer).toEqual(jestExpect.any("function"))
end)

it("SHOULD not change the state if an unrelated action is called", function()
	local newState = ShareUrlReducer({}, { type = "random action" })

	jestExpect(newState).toEqual({})
end)

it("SHOULD store url and link id", function()
	local store = Rodux.Store.new(ShareUrlReducer, nil, { Rodux.thunkMiddleware })

	store:dispatch(createOrGetProfileShareUrl.API())

	jestExpect(store:getState()).toEqual(DEFAULT_RESPONSE_BODY)
end)

it("SHOULD replace values on reload", function()
	local store = Rodux.Store.new(ShareUrlReducer, {
		shortUrl = "aaa",
		linkId = "bbb",
	}, { Rodux.thunkMiddleware })

	store:dispatch(createOrGetProfileShareUrl.API())

	jestExpect(store:getState()).toEqual(DEFAULT_RESPONSE_BODY)
end)
