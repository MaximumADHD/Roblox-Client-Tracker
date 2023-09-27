return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local UpdateChatMessages = require(Actions.UpdateChatMessages)
	local UpdateChatVisible = require(Actions.UpdateChatVisible)
	local SetCanChat = require(Actions.SetCanChat)
	local Chat = require(script.Parent.Chat)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = Chat(nil, {})
		expect(defaultState).toMatchObject({
			canChat = false,
			visible = true,
			lastReadMessages = 0,
			unreadMessages = 0,
		})
	end)

	describe("SetCanChat", function()
		it("should change the value of canChat", function()
			local oldState = Chat(nil, {})
			local newState = Chat(oldState, SetCanChat(true))
			expect(oldState).never.toBe(newState)
			expect(newState.canChat).toBe(true)
		end)

		it("should not change any other values", function()
			local oldState = Chat(nil, {})
			local newState = Chat(oldState, SetCanChat(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "canChat" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("UpdateChatMessages", function()
		it("should change the value of lastReadMessages when visible", function()
			local oldState = Chat(nil, {})
			oldState = Chat(oldState, UpdateChatVisible(true))
			local newState = Chat(oldState, UpdateChatMessages(10))
			expect(oldState).never.toBe(newState)
			expect(newState.lastReadMessages).toBe(10)
			expect(newState.unreadMessages).toBe(0)
		end)

		it("should change the value of unreadMessages when not visible", function()
			local oldState = Chat(nil, {})
			oldState = Chat(oldState, UpdateChatMessages(5))
			oldState = Chat(oldState, UpdateChatVisible(false))
			local newState = Chat(oldState, UpdateChatMessages(15))
			expect(oldState).never.toBe(newState)
			expect(newState.lastReadMessages).toBe(5)
			expect(newState.unreadMessages).toBe(10)
		end)
	end)

	describe("UpdateChatVisible", function()
		it("should reset unreadMessages", function()
			local oldState = Chat(nil, {})
			oldState = Chat(oldState, UpdateChatVisible(false))
			expect(oldState.visible).toBe(false)
			oldState = Chat(oldState, UpdateChatMessages(10))
			local newState = Chat(oldState, UpdateChatVisible(true))
			expect(oldState).never.toBe(newState)
			expect(newState.visible).toBe(true)
			expect(newState.lastReadMessages).toBe(10)
			expect(newState.unreadMessages).toBe(0)
		end)
	end)
end
