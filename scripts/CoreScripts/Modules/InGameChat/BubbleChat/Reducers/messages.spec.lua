local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local Rodux = require(CorePackages.Packages.Rodux)

local messages = require(script.Parent.messages)
local AddMessage = require(script.Parent.Parent.Actions.AddMessage)
local RemoveMessage = require(script.Parent.Parent.Actions.RemoveMessage)
local SetMessageText = require(script.Parent.Parent.Actions.SetMessageText)

local MESSAGE = {
	id = "1",
	userId = "2",
	name = "John",
	text = "Hello, World",
	timestamp = 0,
}

return function()
	it("should handle AddMessage", function()
		local store = Rodux.Store.new(messages)

		store:dispatch(AddMessage(MESSAGE))

		local state = store:getState()

		expect(state[MESSAGE.id]).never.toBeNil()
	end)

	it("should handle RemoveMessage", function()
		local store = Rodux.Store.new(messages)

		store:dispatch(AddMessage(MESSAGE))

		local state = store:getState()

		expect(state[MESSAGE.id]).never.toBeNil()

		store:dispatch(RemoveMessage(MESSAGE))
		state = store:getState()

		expect(state[MESSAGE.id]).toBeNil()
	end)

	it("should handle SetMessageText", function()
		local store = Rodux.Store.new(messages)

		store:dispatch(AddMessage(MESSAGE))
		store:dispatch(SetMessageText(MESSAGE.id, "New Text"))

		local state = store:getState()

		expect(state[MESSAGE.id].text).toBe("New Text")
	end)
end
