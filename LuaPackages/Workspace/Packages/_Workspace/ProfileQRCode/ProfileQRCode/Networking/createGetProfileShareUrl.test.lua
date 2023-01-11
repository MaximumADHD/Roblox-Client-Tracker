local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local HttpRequest = LuaSocialLibrariesDeps.httpRequest
local Rodux = require(Packages.Rodux)
local RoduxNetworking = LuaSocialLibrariesDeps.RoduxNetworking
local JestGlobals = require(Packages.Dev.JestGlobals)

local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local it = JestGlobals.it

local createGetProfileShareUrl = require(script.Parent.createGetProfileShareUrl)

local roduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.MockRequest,
	}),
})

local mockSucceeded = jest.fn()
local mockFailed = jest.fn()

local ProfileShareUrl = createGetProfileShareUrl(roduxNetworking)

local reducer = Rodux.combineReducers({
	networkStatus = roduxNetworking.installReducer(),
	testReducer = Rodux.createReducer({}, {
		[ProfileShareUrl.Succeeded.name] = mockSucceeded,
		[ProfileShareUrl.Failed.name] = mockFailed,
	}),
})

beforeEach(function()
	jest.clearAllMocks()
	ProfileShareUrl.Mock.clear()
end)

it("SHOULD succeed with expected arguments", function()
	ProfileShareUrl.Mock.reply({
		responseBody = {},
	})

	local store = Rodux.Store.new(reducer, nil, { Rodux.thunkMiddleware })

	store:dispatch(ProfileShareUrl.API())

	expect(mockSucceeded).toHaveBeenCalled()
	expect(mockFailed).never.toHaveBeenCalled()
end)
