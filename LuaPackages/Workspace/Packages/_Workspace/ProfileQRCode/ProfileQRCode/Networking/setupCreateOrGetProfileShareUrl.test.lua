local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local Rodux = require(Packages.Rodux)
local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local JestGlobals = require(Packages.Dev.JestGlobals)
local Http = require(Packages.Http)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local afterEach = JestGlobals.afterEach
local it = JestGlobals.it

local setupCreateOrGetProfileShareUrl = require(script.Parent.setupCreateOrGetProfileShareUrl)
local buildUrl = setupCreateOrGetProfileShareUrl.buildUrl
local setupRequest = setupCreateOrGetProfileShareUrl.setupRequest
local profileLinkType = setupCreateOrGetProfileShareUrl.profileLinkType
local roduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.MockRequest,
	}),
})

local ProfileShareRequest = setupRequest(roduxNetworking)

afterEach(function()
	ProfileShareRequest.Mock.clear()
end)

describe("buildUrl", function()
	it("SHOULD be called with the correct params", function()
		local mockPathBuilder = {}
		-- request builder's functions can be chained, as it returns self. So the mocks need to return the object after being called.
		mockPathBuilder.path = jest.fn().mockReturnValue(mockPathBuilder)
		mockPathBuilder.body = jest.fn().mockReturnValue(mockPathBuilder)
		local mockRequestBuilder = jest.fn().mockReturnValue(mockPathBuilder)

		buildUrl(mockRequestBuilder)

		expect(mockRequestBuilder).toHaveBeenCalledWith(Http.Url.APIS_URL .. "sharelinks")
		expect(mockPathBuilder.path).toHaveBeenCalledTimes(2)
		expect(mockPathBuilder.path).toHaveBeenCalledWith(mockPathBuilder, "v1")
		expect(mockPathBuilder.path).toHaveBeenCalledWith(mockPathBuilder, "get-or-create-link")
		expect(mockPathBuilder.body).toHaveBeenCalledTimes(1)
		expect(mockPathBuilder.body).toHaveBeenCalledWith(mockPathBuilder, {
			linkType = profileLinkType,
		})
	end)
end)

describe("setupRequest", function()
	it("SHOULD call rodux networking with expected arguements", function()
		local mockRoduxNetworking = {
			POST = jest.fn(),
		}

		setupRequest(mockRoduxNetworking)

		expect(mockRoduxNetworking.POST).toHaveBeenCalledTimes(1)
		-- FIXME: APPFDN-1925
		expect(mockRoduxNetworking.POST).toHaveBeenCalledWith(
			(script :: any).Parent.setupCreateOrGetProfileShareUrl,
			buildUrl
		)
	end)

	it("SHOULD succeed with expected arguments", function()
		local mockSucceeded = jest.fn()
		local mockFailed = jest.fn()

		local reducer = Rodux.combineReducers({
			networkStatus = roduxNetworking.installReducer(),
			testReducer = Rodux.createReducer({}, {
				[ProfileShareRequest.Succeeded.name] = mockSucceeded,
				[ProfileShareRequest.Failed.name] = mockFailed,
			}),
		})

		ProfileShareRequest.Mock.reply({
			responseBody = {},
		})

		local store = Rodux.Store.new(reducer, nil, { Rodux.thunkMiddleware })

		store:dispatch(ProfileShareRequest.API())

		expect(mockSucceeded).toHaveBeenCalled()
		expect(mockFailed).never.toHaveBeenCalled()
	end)
end)
