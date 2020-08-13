local CorePackages = game:GetService("CorePackages")

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
	timestamp = 0
}

return function()
	it("should handle AddMessage", function()
		local store = Rodux.Store.new(userMessages)

		local state = store:getState()
		expect(state[MESSAGE.userId]).to.never.be.ok()

		store:dispatch(AddMessage(MESSAGE))

		local state = store:getState()
		expect(state[MESSAGE.userId]).to.be.ok()
		expect(#state[MESSAGE.userId]).to.equal(1)
	end)

	it("should handle RemoveMessage", function()
		local store = Rodux.Store.new(userMessages)

		local userId = "1"
		local message1 = createMockMessage({ userId = userId })
		local message2 = createMockMessage({ userId = userId })

		store:dispatch(AddMessage(message1))
		store:dispatch(AddMessage(message2))

		local state = store:getState()

		expect(#state[userId]).to.equal(2)
		expect(state[userId][1]).to.equal(message1.id)
		expect(state[userId][2]).to.equal(message2.id)

		store:dispatch(RemoveMessage(message1))
		state = store:getState()

		expect(#state[userId]).to.equal(1)
		expect(state[userId][1]).to.equal(message2.id)

		store:dispatch(RemoveMessage(message2))
		state = store:getState()

		expect(state[userId]).to.never.be.ok()
	end)

	it("should handle adding multiple messages from different users", function()
		local store = Rodux.Store.new(userMessages)

		store:dispatch(AddMessage({ id = "1", userId = "1", name = "John", text = "Hello, World", timestamp = 0 }))
		store:dispatch(AddMessage({ id = "2", userId = "1", name = "John", text = "Hello, World", timestamp = 0 }))
		store:dispatch(AddMessage({ id = "3", userId = "2", name = "Jane", text = "Hello, World", timestamp = 0 }))
		store:dispatch(AddMessage({ id = "4", userId = "3", name = "Joe", text = "Hello, World", timestamp = 0 }))

		local state = store:getState()

		expect(#state["1"]).to.equal(2)
		expect(#state["2"]).to.equal(1)
		expect(#state["3"]).to.equal(1)
	end)

	it("should not remove the list of messages if the message was already removed", function()
		local store = Rodux.Store.new(userMessages)

		local userId = "1"
		local message1 = createMockMessage({ userId = userId })
		local message2 = createMockMessage({ userId = userId })

		store:dispatch(AddMessage(message1))
		store:dispatch(AddMessage(message2))

		local state = store:getState()
		expect(#state[userId]).to.equal(2)

		store:dispatch(RemoveMessage(message1))

		state = store:getState()
		expect(#state[userId]).to.equal(1)

		-- Attempt to remove the same message again. This should do nothing to
		-- the state.
		store:dispatch(RemoveMessage(message1))

		state = store:getState()
		expect(state[userId]).to.be.ok()
		expect(#state[userId]).to.equal(1)
	end)
end
