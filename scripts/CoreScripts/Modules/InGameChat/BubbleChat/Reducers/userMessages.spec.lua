local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local Rodux = require(CorePackages.Packages.Rodux)

local userMessages = require(script.Parent.userMessages)
local AddMessage = require(script.Parent.Parent.Actions.AddMessage)
local RemoveMessage = require(script.Parent.Parent.Actions.RemoveMessage)
local createMockMessage = require(script.Parent.Parent.Helpers.createMockMessage)

local MESSAGE = {
	id = "1",
	userId = "2",
	name = "John",
	text = "Hello, World",
	timestamp = 0,
}

return function()
	it("should handle AddMessage", function()
		local store = Rodux.Store.new(userMessages)

		local state = store:getState()
		expect(state[MESSAGE.userId]).toBeNil()

		store:dispatch(AddMessage(MESSAGE))

		local state = store:getState()
		expect(state[MESSAGE.userId]).toEqual({
			expect.anything()
		})
	end)

	it("should handle RemoveMessage", function()
		local store = Rodux.Store.new(userMessages)

		local userId = "1"
		local message1 = createMockMessage({ userId = userId })
		local message2 = createMockMessage({ userId = userId })

		store:dispatch(AddMessage(message1))
		store:dispatch(AddMessage(message2))

		local state = store:getState()

		expect(state[userId]).toEqual({ message1.id, message2.id })

		store:dispatch(RemoveMessage(message1))
		state = store:getState()

		expect(state[userId]).toEqual({ message2.id })

		store:dispatch(RemoveMessage(message2))
		state = store:getState()

		expect(state[userId]).toBeNil()
	end)

	it("should handle adding multiple messages from different users", function()
		local store = Rodux.Store.new(userMessages)

		store:dispatch(AddMessage({ id = "1", userId = "1", name = "John", text = "Hello, World", timestamp = 0 }))
		store:dispatch(AddMessage({ id = "2", userId = "1", name = "John", text = "Hello, World", timestamp = 0 }))
		store:dispatch(AddMessage({ id = "3", userId = "2", name = "Jane", text = "Hello, World", timestamp = 0 }))
		store:dispatch(AddMessage({ id = "4", userId = "3", name = "Joe", text = "Hello, World", timestamp = 0 }))

		local state = store:getState()

		expect(#state["1"]).toBe(2)
		expect(#state["2"]).toBe(1)
		expect(#state["3"]).toBe(1)
	end)

	it("should not remove the list of messages if the message was already removed", function()
		local store = Rodux.Store.new(userMessages)

		local userId = "1"
		local message1 = createMockMessage({ userId = userId })
		local message2 = createMockMessage({ userId = userId })

		store:dispatch(AddMessage(message1))
		store:dispatch(AddMessage(message2))

		local state = store:getState()
		expect(#state[userId]).toBe(2)

		store:dispatch(RemoveMessage(message1))

		state = store:getState()
		expect(#state[userId]).toBe(1)

		-- Attempt to remove the same message again. This should do nothing to
		-- the state.
		store:dispatch(RemoveMessage(message1))

		state = store:getState()
		expect(#state[userId]).toBe(1)
	end)
end
