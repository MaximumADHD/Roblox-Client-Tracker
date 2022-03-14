return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getConversationDisplayPresence = require(script.Parent.getConversationDisplayPresence)

	describe("GIVEN state and a conversation", function()
		local offline = {
			id = "offline",
			presence = "OFFLINE",
		}
		local online = {
			id = "online",
			presence = "ONLINE",
		}
		local ingame = {
			id = "ingame",
			presence = "INGAME",
		}
		local state = {
			Users = {
				[offline.id] = offline,
				[online.id] = online,
				[ingame.id] = ingame,
			}
		}

		describe("MultiUserConversation", function()
			it("SHOULD return nil for a multi-user-conversation", function()
				local conversation = {
					conversationType = "MultiUserConversation",
					participants = { offline.id, online.id, ingame.id }
				}
				local result = getConversationDisplayPresence(state, conversation)

				jestExpect(result).toBeNil()
			end)
		end)

		describe("OneToOneConversation", function()
			it("SHOULD return an object when the user is online", function()
				local conversation = {
					conversationType = "OneToOneConversation",
					participants = { online.id }
				}
				local result = getConversationDisplayPresence(state, conversation)
				jestExpect(result).never.toBeNil()
			end)

			it("SHOULD return an object when the user is offline", function()
				local conversation = {
					conversationType = "OneToOneConversation",
					participants = { offline.id }
				}
				local result = getConversationDisplayPresence(state, conversation)
				jestExpect(result).never.toBeNil()
			end)

			it("SHOULD return an object when the user is ingame", function()
				local conversation = {
					conversationType = "OneToOneConversation",
					participants = { ingame.id }
				}
				local result = getConversationDisplayPresence(state, conversation)
				jestExpect(result).never.toBeNil()
			end)
		end)
	end)
end
