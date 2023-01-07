local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local AddFriendsConstants = require(FriendsLanding.AddFriends.Constants)
local TencentAuthInfoEvent = AddFriendsConstants.TENCENT_AUTH_INFO_SYNC_EVENT

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local Mock = devDependencies.Mock

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local TencentAuthInfoEventReceiver = require(script.Parent)

local function getMockRobloxEventReceiver(targetEvent, targetEventCallback)
	local robloxEventReceiver = {
		observed = {},
	}

	function robloxEventReceiver:observeEvent(event, callback)
		self.observed[event] = self.observed[event] or {}
		table.insert(self.observed[event], callback)
		local key = #self.observed[event]
		return {
			disconnect = function()
				self.observed[event][key] = nil
			end,
		}
	end

	function robloxEventReceiver:fireEvent(event, detail)
		if self.observed[event] then
			for _, callback in pairs(self.observed[event]) do
				callback(detail)
			end
			if event == targetEvent then
				targetEventCallback(detail)
			end
		end
	end

	return robloxEventReceiver
end

local function createTencentAuthInfoEventReceiver(targetEventCallback)
	local mockRobloxEventReceiver = getMockRobloxEventReceiver(TencentAuthInfoEvent, targetEventCallback)
	local _, cleanup = createInstanceWithProviders(mockLocale)(TencentAuthInfoEventReceiver, {
		props = {
			RobloxEventReceiver = mockRobloxEventReceiver,
		},
	})
	return mockRobloxEventReceiver, cleanup
end

describe("TencentAuthInfoEventReceiverComponent", function()
	local callback
	local robloxEventReceiver, cleanup

	beforeEach(function()
		callback = jest.fn()
		robloxEventReceiver, cleanup = createTencentAuthInfoEventReceiver(callback)
	end)

	afterEach(function()
		callback.mockReset()
		cleanup()
	end)

	it("SHOULD mount/unmount without issue and not call callback by default", function()
		expect(callback).never.toHaveBeenCalled()
	end)

	it("SHOULD not call callback for wrong event", function()
		local mockDetail = Mock.MagicMock.new()
		robloxEventReceiver:fireEvent("WRONGEVENT", mockDetail)
		expect(callback).never.toHaveBeenCalled()
	end)

	it("SHOULD call callback for target event", function()
		local mockJsonObject = {
			type = "Wechat",
			appType = "PlayerMobile",
			userAccessToken = "ocxI10avZgx0mq4akAnpjsmOby8Y",
			userOpenId = "OYXxlQviprbpiBGBRng1DdqIe7",
		}
		robloxEventReceiver:fireEvent(TencentAuthInfoEvent, mockJsonObject)
		expect(callback).toHaveBeenCalledTimes(1)
	end)
end)
