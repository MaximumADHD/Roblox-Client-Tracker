local SocialTab = script:FindFirstAncestor("SocialTab")

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ConnectSignalEventsToRN = require(script.Parent.ConnectSignalEventsToRN)

local function getMockedSignal()
	local MockSignal = {}
	MockSignal.__index = MockSignal

	function MockSignal.new()
		local self = {
			_callback = nil :: ((...any) -> ...any)?,
		}
		setmetatable(self, MockSignal)

		return self
	end

	function MockSignal:connect(callback)
		self._callback = callback
		return self
	end

	function MockSignal:disconnect()
		self._callback = nil
	end

	function MockSignal:sendSignal(action)
		if self._callback then
			self._callback(action)
		end
	end

	return MockSignal
end

describe("WHEN connected to mocked Signal and mocked callback", function()
	local MockSignal = getMockedSignal()
	local action = "testaction"

	local mockSignal
	local callback
	local connectSignalEventsToRN
	local disconnect

	beforeEach(function()
		mockSignal = MockSignal.new()
		callback = jest.fn()

		connectSignalEventsToRN = ConnectSignalEventsToRN.new()
		connectSignalEventsToRN:updateActionSignal(mockSignal)
		disconnect = connectSignalEventsToRN:connectExternalDispatch(callback)
	end)

	it("SHOULD call callback when received signal", function()
		mockSignal:sendSignal(action)
		expect(callback).toHaveBeenCalledWith(action)
	end)

	it("SHOULD not call callback after disconnecting", function()
		disconnect()
		mockSignal:sendSignal(action)
		expect(callback).toHaveBeenCalledTimes(0)
	end)

	it("SHOULD update and connect to correct signal", function()
		local mockNewSignal = MockSignal.new()
		connectSignalEventsToRN:updateActionSignal(mockNewSignal)

		mockSignal:sendSignal(action)
		expect(callback).never.toHaveBeenCalled()

		mockNewSignal:sendSignal(action)
		expect(callback).toHaveBeenCalledWith(action)
	end)
end)
