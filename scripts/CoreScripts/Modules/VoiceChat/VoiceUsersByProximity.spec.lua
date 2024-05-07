--!nonstrict

return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

	local VoiceUsersByProximity = require(script.Parent.VoiceUsersByProximity)
	local getVoiceUsersByProximity = VoiceUsersByProximity.getSortedPlayers

	local VoiceChatServiceManagerClass = require(script.Parent.VoiceChatServiceManager)
	local VCSS = require(script.Parent.VoiceChatServiceStub)
	local FFlagEnableCoreVoiceChatModule = require(script.Parent.Flags.GetFFlagEnableCoreVoiceChatModule)()

	local CoreVoiceManagerKlass
	if FFlagEnableCoreVoiceChatModule then
		CoreVoiceManagerKlass = require(CorePackages.Workspace.Packages.VoiceChatCore).CoreVoiceManager
	end

	local VoiceChatServiceStub = VCSS.VoiceChatServiceStub
	local makeMockUser = VCSS.makeMockUser

	beforeAll(function(c)
		c.fflagClearUserFromRecentVoiceDataOnLeave =
			game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", false)
		c.fintVoiceUsersInteractionExpiryTimeSeconds =
			game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 600)
	end)

	afterAll(function(c)
		game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", c.fflagClearUserFromRecentVoiceDataOnLeave)
		game:SetFastIntForTesting(
			"VoiceUsersInteractionExpiryTimeSeconds",
			c.fintVoiceUsersInteractionExpiryTimeSeconds
		)
	end)

	beforeEach(function(c)
		local BlockMock = Instance.new("BindableEvent")

		if CoreVoiceManagerKlass then
			c.CoreVoiceManager = CoreVoiceManagerKlass.new(
				BlockMock.Event,
				nil,
				nil,
				VoiceChatServiceStub
			)
		end

		c.VoiceChatServiceManager = VoiceChatServiceManagerClass.new(
			c.CoreVoiceManager,
			VoiceChatServiceStub,
			nil,
			nil,
			BlockMock.Event
		)
		c.VoiceChatServiceManager:SetupParticipantListeners()

		local mockPlayersService = {
			players = {},
		}

		function mockPlayersService:GetPlayerByUserId(userId)
			return mockPlayersService.players[userId]
		end

		function mockPlayersService:addMockPlayerAndCharacter(userId, position)
			local mockPlayer = {
				UserId = userId,
				Name = tostring(userId),
				Character = {
					PrimaryPart = {
						Position = position,
					},
				},
			}

			mockPlayersService.players[userId] = mockPlayer

			local mockUser = makeMockUser(tostring(userId))
			mockUser.isMuted = true
			VoiceChatServiceStub:addUsers({ mockUser })

			return mockPlayer
		end

		c.mockPlayersService = mockPlayersService
	end)

	afterEach(function(c)
		c.VoiceChatServiceManager:Disconnect()
	end)

	describe("GetVoiceUsersByProximity", function(c)
		it("Should sort by proximity", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))
			waitForEvents()

			local usersSortedByProximity =
				getVoiceUsersByProximity(c.mockPlayersService, c.VoiceChatServiceManager, Vector3.new(0, 0, 0))

			jestExpect(usersSortedByProximity[1]).toBe(c.mockPlayersService.players["001"])
			jestExpect(usersSortedByProximity[2]).toBe(c.mockPlayersService.players["002"])
			jestExpect(usersSortedByProximity[3]).toBe(c.mockPlayersService.players["003"])
		end)

		it("Should filter users further than max distance", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))
			waitForEvents()

			local usersSortedByProximity =
				getVoiceUsersByProximity(c.mockPlayersService, c.VoiceChatServiceManager, Vector3.new(0, 0, 0), 5)

			jestExpect(#usersSortedByProximity).toBe(2)
		end)

		it("Should filter users who haven't interacted with local user", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))
			waitForEvents()

			c.mockPlayersService.LocalPlayer = c.mockPlayersService.players["001"]

			local newState = makeMockUser("002")
			newState.isMuted = false
			VoiceChatServiceStub:setUserStates({
				newState,
			})
			waitForEvents()

			local usersSortedByProximity = getVoiceUsersByProximity(
				c.mockPlayersService,
				c.VoiceChatServiceManager,
				Vector3.new(0, 0, 0),
				nil,
				true
			)

			jestExpect(#usersSortedByProximity).toBe(1)
		end)

		xit("Should exclude players", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))
			waitForEvents()

			c.mockPlayersService.LocalPlayer = c.mockPlayersService.players["001"]

			local usersSortedByProximity = getVoiceUsersByProximity(
				c.mockPlayersService,
				c.VoiceChatServiceManager,
				Vector3.new(0, 0, 0),
				nil,
				nil,
				c.mockPlayersService.players["003"]
			)

			jestExpect(#usersSortedByProximity).toBe(2)
		end)
	end)
end
