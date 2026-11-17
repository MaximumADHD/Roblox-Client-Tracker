local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local MockableProxyServices = require(CorePackages.Workspace.Packages.MockableProxyServices)
local getServerNow = require(script.Parent.getServerNow)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local CLIENT_NOW = 1700000000

beforeEach(function()
	jest.useFakeTimers()
	jest.setSystemTime(CLIENT_NOW)
end)

afterEach(function()
	MockableProxyServices.Workspace = nil
	jest.useRealTimers()
end)

describe("getServerNow", function()
	it("returns the server time when it is available", function()
		MockableProxyServices.Workspace = {
			GetServerTimeNow = function()
				return CLIENT_NOW + 1234.5
			end,
		}
		expect(getServerNow()).toBe(CLIENT_NOW + 1234.5)
	end)

	it("falls back to the client clock when the server time is not available yet", function()
		MockableProxyServices.Workspace = {
			GetServerTimeNow = function()
				error("not connected to a server")
			end,
		}
		expect(getServerNow()).toBe(CLIENT_NOW)
	end)
end)
