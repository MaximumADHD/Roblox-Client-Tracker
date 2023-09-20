return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local MessageBus = game:GetService("MessageBusService")
	local Players = game:GetService("Players")
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local GetFFlagCorescriptsSoundManagerEnabled =
		require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCorescriptsSoundManagerEnabled

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ContactListApp = require(script.Parent.ContactListApp)
	local Reducer = require(script.Parent.Parent.Reducer)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList
	local Pages = require(ContactList.Enums.Pages)
	local dependencies = require(ContactList.dependencies)
	local RoduxCall = dependencies.RoduxCall

	local Constants = require(RobloxGui.Modules.Common.Constants)

	local act = require(RobloxGui.Modules.act)

	beforeAll(function(c: any)
		local RemoteIrisInviteTeleport = Instance.new("RemoteEvent")
		RemoteIrisInviteTeleport.Name = "ContactListIrisInviteTeleport"
		RemoteIrisInviteTeleport.Parent = RobloxReplicatedStorage

		local RemoteGetServerType = Instance.new("RemoteFunction")
		RemoteGetServerType.Name = "GetServerType"
		RemoteGetServerType.Parent = RobloxReplicatedStorage
		RemoteGetServerType.OnServerInvoke = function()
			return Constants.VIP_SERVER
		end

		if GetFFlagCorescriptsSoundManagerEnabled() then
			local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
			local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
			SoundManager.init()
			SoundManager:CreateSoundGroup(SoundGroups.Iris.Name)
		end
	end)

	it("should mount and unmount without errors", function()
		local mockState = {
			Call = {
				callHistory = {
					callRecords = {
						{
							callId = "test_call_Id",
							callerId = 1,
							participants = {
								{
									userId = 1,
									displayName = "testuser_0",
									userName = "testuser_0",
								},
								{
									userId = 2,
									displayName = "testuser_1",
									userName = "testuser_1",
								},
							},
							status = "CallFinished",
							startUtc = 1681338167883,
							endUtc = 1681338335366,
							universeId = 123,
							placeId = 456,
						},
					},
				},
				currentCall = {
					status = RoduxCall.Enums.Status.Active.rawValue(),
					callerId = 11111111,
					calleeId = 12345678,
					placeId = 789,
					callId = "123456",
					callerDisplayName = "Display Name 1",
					calleeDisplayName = "Display Name 2",
					gameInstanceId = "gameId",
				},
			},
			Navigation = {
				currentPage = Pages.FriendList,
			},
		}

		local store = Rodux.Store.new(Reducer, mockState, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ContactListApp = Roact.createElement(ContactListApp),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local contactListContainer = folder:FindFirstChild("ContactListContainer", true) :: Frame
		expect(contactListContainer).never.toBeNull()

		local callBarContainer = folder:FindFirstChild("CallBarContainer", true) :: Frame
		expect(callBarContainer).never.toBeNull()

		Roact.unmount(instance)
	end)

	local function createMockCallProtocol(state: string, instanceId: string)
		local MockCallProtocol = {}

		function MockCallProtocol:listenToHandleInitCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleConnectingCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleTeleportingCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleEndCall(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", callback, false, true)
		end

		function MockCallProtocol:listenToHandleCallMessage(callback: (any) -> ())
			-- Stub
			return MessageBus:Subscribe("", function() end, false, true)
		end

		return MockCallProtocol
	end

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
			local MockCallProtocol = createMockCallProtocol(RoduxCall.Enums.Status.Connecting.rawValue(), "") :: any

			function MockCallProtocol:listenToHandleTeleportingCall(callback: (any) -> ())
				return MessageBus:Subscribe("TeleportTest", callback, false, true)
			end

			function MockCallProtocol:teleportSuccessCall(callId)
				teleportSuccessCallReceived = true
			end

			local store = Rodux.Store.new(Reducer, {}, { Rodux.thunkMiddleware })

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					ContactListApp = Roact.createElement(ContactListApp, { callProtocol = MockCallProtocol :: any }),
				}),
			})
			local folder = Instance.new("Folder")
			local root = ReactRoblox.createRoot(folder)

			act(function()
				root:render(element)
			end)

			MessageBus:Publish("TeleportTest", {
				status = RoduxCall.Enums.Status.Teleporting.rawValue(),
				callId = "123456",
				callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
				instanceId = "",
			})
			wait()

			expect(remoteTeleportReceived).toBe(false)
			expect(teleportSuccessCallReceived).toBe(true)

			ReactRoblox.act(function()
				connection:disconnect()
				root:unmount()
			end)
		end
	)

	it(
		"should teleport the caller when the call becomes teleporting and caller is in incorrect private server",
		function(c: any)
			local received = false
			local RemoteIrisInviteTeleport =
				RobloxReplicatedStorage:FindFirstChild("ContactListIrisInviteTeleport") :: any
			local connection = RemoteIrisInviteTeleport.OnServerEvent:Connect(function()
				received = true
			end)

			local MockCallProtocol =
				createMockCallProtocol(RoduxCall.Enums.Status.Connecting.rawValue(), "WRONG_GAME_INSTANCE_ID") :: any

			function MockCallProtocol:listenToHandleTeleportingCall(callback: (any) -> ())
				return MessageBus:Subscribe("TeleportTest", callback, false, true)
			end

			local store = Rodux.Store.new(Reducer, {}, { Rodux.thunkMiddleware })

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					ContactListApp = Roact.createElement(ContactListApp, { callProtocol = MockCallProtocol :: any }),
				}),
			})
			local folder = Instance.new("Folder")
			local root = ReactRoblox.createRoot(folder)

			act(function()
				root:render(element)
			end)

			MessageBus:Publish("TeleportTest", {
				status = RoduxCall.Enums.Status.Teleporting.rawValue(),
				callId = "123456",
				callerId = Players.LocalPlayer and Players.LocalPlayer.UserId or 0,
				instanceId = "WRONG_GAME_INSTANCE_ID",
			})
			wait()

			expect(received).toBe(true)

			ReactRoblox.act(function()
				connection:disconnect()
				root:unmount()
			end)
		end
	)
end
