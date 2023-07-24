local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Promise = require(CorePackages.Promise)

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local initCall = require(script.Parent.initCall)
local dependencies = require(script.Parent.dependencies)
local RoduxCall = dependencies.RoduxCall

return function()
	local function createMockCallProtocol(state: string, instanceId: string)
		local MockCallProtocol = {}

		function MockCallProtocol:getCallState()
			return Promise.resolve({
				status = state,
				callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
				calleeId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
				callId = "CALL_ID",
				instanceId = instanceId,
			})
		end

		return MockCallProtocol
	end

	it("should call answerSuccessCall when in accepting state and joining the correct private server", function(c: any)
		local received = false

		-- Get call state returns we are "Accepting". Blank instance id will
		-- match game.JobId.
		local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Accepting.rawValue(), "") :: any

		function MockCallProtocol:answerSuccessCall(callId: string)
			received = callId == "CALL_ID"
		end

		initCall(MockCallProtocol)
		expect(received).toBe(true)
	end)

	it("should call rejectCall when in accepting state and joining the incorrect private server", function(c: any)
		local received = false

		-- Get call state returns we are "Accepting"
		local MockCallProtocol =
			createMockCallProtocol(RoduxCall.Enums.Status.Accepting.rawValue(), "WRONG_GAME_INSTANCE_ID") :: any

		function MockCallProtocol:rejectCall(callId: string)
			received = callId == "CALL_ID"
		end

		initCall(MockCallProtocol)
		expect(received).toBe(true)
	end)

	it(
		"should call teleportSuccessCall when in teleporting state and joining the correct private server",
		function(c: any)
			local received = false

			-- Get call state returns we are "Teleporting". Blank instance id will
			-- match game.JobId.
			local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Teleporting.rawValue(), "") :: any

			function MockCallProtocol:teleportSuccessCall(callId: string)
				received = callId == "CALL_ID"
			end

			initCall(MockCallProtocol)
			expect(received).toBe(true)
		end
	)

	it("should call finishCall when in teleporting state and joining the incorrect private server", function(c: any)
		local received = false

		-- Get call state returns we are "Teleporting"
		local MockCallProtocol =
			createMockCallProtocol(RoduxCall.Enums.Status.Teleporting.rawValue(), "WRONG_GAME_INSTANCE_ID") :: any

		function MockCallProtocol:finishCall(callId: string)
			received = callId == "CALL_ID"
		end

		initCall(MockCallProtocol)
		expect(received).toBe(true)
	end)
end
