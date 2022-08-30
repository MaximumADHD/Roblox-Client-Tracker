--!nonstrict

return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest

	local VoiceUsersByProximity = require(script.Parent.VoiceUsersByProximity)
	local getVoiceUsersByProximity = VoiceUsersByProximity.getSortedPlayers

	local VoiceChatServiceManagerClass = require(script.Parent.VoiceChatServiceManager)
	local VCSS = require(script.Parent.VoiceChatServiceStub)
	local VoiceChatServiceStub = VCSS.VoiceChatServiceStub
	local makeMockUser = VCSS.makeMockUser

	local VoiceChatServiceManager
	beforeAll(function(c)
		c.fflagClearUserFromRecentVoiceDataOnLeave = game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", false)
		c.fflagVoiceAbuseReportsEnabled = game:SetFastFlagForTesting("VoiceAbuseReportsEnabled", true)
		c.fintVoiceUsersInteractionExpiryTimeSeconds = game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", 600)
	end)

	afterAll(function(c)
		game:SetFastFlagForTesting("ClearUserFromRecentVoiceDataOnLeave", c.fflagClearUserFromRecentVoiceDataOnLeave)
		game:SetFastFlagForTesting("VoiceAbuseReportsEnabled", c.fflagVoiceAbuseReportsEnabled)
		game:SetFastIntForTesting("VoiceUsersInteractionExpiryTimeSeconds", c.fintVoiceUsersInteractionExpiryTimeSeconds)
	end)

	beforeEach(function(c)
		local BlockMock = Instance.new("BindableEvent")
		c.VoiceChatServiceManager = VoiceChatServiceManagerClass.new(VoiceChatServiceStub, nil, nil, BlockMock.Event)
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
					}
				}
			}

			mockPlayersService.players[userId] = mockPlayer

			local mockUser = makeMockUser(tostring(userId))
			mockUser.isMuted = true
			VoiceChatServiceStub:addUsers({mockUser})

			return mockPlayer
		end

		c.mockPlayersService = mockPlayersService
	end)

	describe("GetVoiceUsersByProximity", function(c)
		it("Should sort by proximity", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))

			local usersSortedByProximity = getVoiceUsersByProximity(c.mockPlayersService, c.VoiceChatServiceManager, Vector3.new(0,0,0))

			jestExpect(usersSortedByProximity[1]).toBe(c.mockPlayersService.players["001"])
			jestExpect(usersSortedByProximity[2]).toBe(c.mockPlayersService.players["002"])
			jestExpect(usersSortedByProximity[3]).toBe(c.mockPlayersService.players["003"])
		end)

		it("Should filter users further than max distance", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))

			local usersSortedByProximity = getVoiceUsersByProximity(c.mockPlayersService, c.VoiceChatServiceManager, Vector3.new(0,0,0), 5)

			jestExpect(#usersSortedByProximity).toBe(2)
		end)

		it("Should filter users who haven't interacted with local user", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))

			c.mockPlayersService.LocalPlayer = c.mockPlayersService.players["001"]

			local newState = makeMockUser("002")
			newState.isMuted = false
			VoiceChatServiceStub:setUserStates({
				newState,
			})

			local usersSortedByProximity = getVoiceUsersByProximity(c.mockPlayersService, c.VoiceChatServiceManager, Vector3.new(0,0,0), nil, true)

			jestExpect(#usersSortedByProximity).toBe(1)
		end)

		it("Should exclude players", function(c)
			c.mockPlayersService:addMockPlayerAndCharacter("001", Vector3.new(0, 0, 0))
			c.mockPlayersService:addMockPlayerAndCharacter("002", Vector3.new(0, 0, 5))
			c.mockPlayersService:addMockPlayerAndCharacter("003", Vector3.new(0, 0, 10))

			c.mockPlayersService.LocalPlayer = c.mockPlayersService.players["001"]

			local usersSortedByProximity = getVoiceUsersByProximity(
				c.mockPlayersService,
				c.VoiceChatServiceManager,
				Vector3.new(0,0,0), nil, nil, c.mockPlayersService.players["003"])

			jestExpect(#usersSortedByProximity).toBe(2)
		end)
	end)
end
