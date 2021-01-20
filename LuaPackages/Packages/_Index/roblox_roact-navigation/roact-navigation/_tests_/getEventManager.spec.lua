-- upstream https://github.com/react-navigation/react-navigation/blob/f10543f9fcc0f347c9d23aeb57616fd0f21cd4e3/packages/core/src/__tests__/getEventManager.test.js
return function()
	local root = script.Parent.Parent
	local getEventManager = require(root.getEventManager)
	local Events = require(root.Events)
	local createSpy = require(root.utils.createSpy)

	local TARGET = "target"

	it("calls listeners to emitted event", function()
		local eventManager = getEventManager(TARGET)
		local callback = createSpy()
		eventManager.addListener(Events.DidFocus, callback.value)

		eventManager.emit(Events.DidFocus)

		expect(callback.callCount).to.equal(1)
	end)

	it("does not call listeners connected to a different event", function()
		local eventManager = getEventManager(TARGET)
		local callback = createSpy()
		eventManager.addListener(Events.DidFocus, callback.value)

		eventManager.emit("didBlur")

		expect(callback.callCount).to.equal(0)
	end)

	it("does not call removed listeners", function()
		local eventManager = getEventManager(TARGET)
		local callback = createSpy()
		local remove = eventManager.addListener(Events.DidFocus, callback.value).remove

		eventManager.emit(Events.DidFocus)
		expect(callback.callCount).to.equal(1)

		remove()

		eventManager.emit(Events.DidFocus)
		expect(callback.callCount).to.equal(1)
	end)

	it("calls the listeners with the given payload", function()
		local eventManager = getEventManager(TARGET)
		local callback = createSpy()
		eventManager.addListener(Events.DidFocus, callback.value)

		local payload = { foo = 0 }
		eventManager.emit(Events.DidFocus, payload)

		callback:assertCalledWithDeepEqual(payload)
	end)
end
