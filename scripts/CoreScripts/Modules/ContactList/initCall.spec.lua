local CorePackages = game:GetService("CorePackages")
local MessageBus = game:GetService("MessageBusService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local Promise = require(CorePackages.Promise)

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local initCall = require(script.Parent.initCall)
local dependencies = require(script.Parent.dependencies)
local RoduxCall = dependencies.RoduxCall

return function()
	local function createMockCallProtocol(state: string, instanceId: string)
		local MockCallProtocol = {}

		local mockCallModel = {
			status = state,
			callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
			calleeId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
			callId = "CALL_ID",
			instanceId = instanceId,
		}

		function MockCallProtocol:getCallState()
			return Promise.resolve(mockCallModel)
		end

		function MockCallProtocol:listenToHandleMicAndCamChanged(callback)
			callback(mockCallModel)
		end

		function MockCallProtocol:listenToHandleTeleportingCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleTransferCallTeleportJoin(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleTransferCallTeleportLeave(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleActiveCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleEndCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		return MockCallProtocol
	end

	beforeAll(function(c: any)
		local RemoteIrisInviteTeleport = Instance.new("RemoteEvent")
		RemoteIrisInviteTeleport.Name = "ContactListIrisInviteTeleport"
		RemoteIrisInviteTeleport.Parent = RobloxReplicatedStorage

		local RemoteUpdateCurrentCall = Instance.new("RemoteEvent")
		RemoteUpdateCurrentCall.Name = "UpdateCurrentCall"
		RemoteUpdateCurrentCall.Parent = RobloxReplicatedStorage
	end)

	describe("GetCallState", function()
		it(
			"should call answerSuccessCall when in accepting state and joining the correct private server",
			function(c: any)
				local received = false

				-- Get call state returns we are "Accepting". Blank instance id will
				-- match game.JobId.
				local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Accepting, "") :: any

				function MockCallProtocol:answerSuccessCall(callId: string)
					received = callId == "CALL_ID"
				end

				initCall(MockCallProtocol)
				expect(received).toBe(true)
			end
		)

		it("should call rejectCall when in accepting state and joining the incorrect private server", function(c: any)
			local received = false

			-- Get call state returns we are "Accepting"
			local MockCallProtocol =
				createMockCallProtocol(RoduxCall.Enums.Status.Accepting, "WRONG_GAME_INSTANCE_ID") :: any

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
				local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Teleporting, "") :: any

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
				createMockCallProtocol(RoduxCall.Enums.Status.Teleporting, "WRONG_GAME_INSTANCE_ID") :: any

			function MockCallProtocol:finishCall(callId: string)
				received = callId == "CALL_ID"
			end

			initCall(MockCallProtocol)
			expect(received).toBe(true)
		end)
	end)

	it(
		"should not teleport the caller when the call becomes teleporting and caller is in correct private server",
		function(c: any)
			local remoteTeleportReceived = false
			local teleportSuccessCallReceived = false
			local RemoteIrisInviteTeleport =
				RobloxReplicatedStorage:FindFirstChild("ContactListIrisInviteTeleport") :: any
			local connection = RemoteIrisInviteTeleport.OnServerEvent:Connect(function()
				remoteTeleportReceived = true
			end)

			-- Blank instance id will match game.JobId.
			local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Connecting, "") :: any

			function MockCallProtocol:listenToHandleTeleportingCall(callback: (any) -> ())
				return MessageBus:Subscribe("TeleportTest", callback, false, true)
			end

			function MockCallProtocol:teleportSuccessCall(callId)
				teleportSuccessCallReceived = true
			end

			initCall(MockCallProtocol)

			MessageBus:Publish("TeleportTest", {
				status = RoduxCall.Enums.Status.Teleporting,
				callId = "123456",
				callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
				instanceId = "",
			})
			wait()

			expect(remoteTeleportReceived).toBe(false)
			expect(teleportSuccessCallReceived).toBe(true)

			connection:disconnect()
		end
	)

	it(
		"should teleport the caller when the call becomes teleporting and caller is in incorrect private server",
		function(c: any)
			local remoteTeleportReceived = false
			local teleportSuccessCallReceived = false
			local RemoteIrisInviteTeleport =
				RobloxReplicatedStorage:FindFirstChild("ContactListIrisInviteTeleport") :: any
			local connection = RemoteIrisInviteTeleport.OnServerEvent:Connect(function()
				remoteTeleportReceived = true
			end)

			local MockCallProtocol =
				createMockCallProtocol(RoduxCall.Enums.Status.Connecting, "WRONG_GAME_INSTANCE_ID") :: any

			function MockCallProtocol:listenToHandleTeleportingCall(callback: (any) -> ())
				return MessageBus:Subscribe("TeleportTest", callback, false, true)
			end

			function MockCallProtocol:teleportSuccessCall(callId)
				teleportSuccessCallReceived = true
			end

			initCall(MockCallProtocol)

			MessageBus:Publish("TeleportTest", {
				status = RoduxCall.Enums.Status.Teleporting,
				callId = "123456",
				callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
				instanceId = "WRONG_GAME_INSTANCE_ID",
			})
			wait()

			expect(remoteTeleportReceived).toBe(true)
			expect(teleportSuccessCallReceived).toBe(false)

			connection:disconnect()
		end
	)

	it("update call id based on call events from idle", function(c: any)
		local RemoteUpdateCurrentCall = RobloxReplicatedStorage:FindFirstChild("UpdateCurrentCall") :: any
		local currentCall = nil
		local connection = RemoteUpdateCurrentCall.OnServerEvent:Connect(function(player, call)
			currentCall = call
		end)

		local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Idle, "") :: any

		function MockCallProtocol:listenToHandleActiveCall(callback: (any) -> ())
			return MessageBus:Subscribe("ActiveCall", callback, false, true)
		end

		function MockCallProtocol:listenToHandleEndCall(callback: (any) -> ())
			return MessageBus:Subscribe("EndCall", callback, false, true)
		end

		function MockCallProtocol:listenToHandleTransferCallTeleportJoin(callback: (any) -> ())
			return MessageBus:Subscribe("TransferCallTeleportJoin", callback, false, true)
		end

		function MockCallProtocol:listenToHandleTransferCallTeleportLeave(callback: (any) -> ())
			return MessageBus:Subscribe("TransferCallTeleportLeave", callback, false, true)
		end

		initCall(MockCallProtocol)

		wait()
		expect(currentCall).toBe(nil)

		MessageBus:Publish("ActiveCall", {
			status = RoduxCall.Enums.Status.Active,
			callId = "123456",
			callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
			calleeId = 456,
			instanceId = "",
		})
		wait()
		expect(currentCall).toEqual({ callId = "123456", participants = { "12345678", "456" } })

		MessageBus:Publish("TransferCallTeleportLeave", { callId = "123456" })
		wait()
		expect(currentCall).toBe(nil)

		MessageBus:Publish(
			"TransferCallTeleportJoin",
			{ callId = "123456", callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0, calleeId = 456 }
		)
		wait()
		expect(currentCall).toEqual({ callId = "123456", participants = { "12345678", "456" } })

		MessageBus:Publish("EndCall", {})
		wait()
		expect(currentCall).toBe(nil)

		connection:disconnect()
	end)
end
