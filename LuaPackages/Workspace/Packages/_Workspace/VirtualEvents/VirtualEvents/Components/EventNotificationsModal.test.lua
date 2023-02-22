local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventNotificationsModal = require(script.Parent.EventNotificationsModal)

local expect = JestGlobals.expect
local jest = JestGlobals.jest
local test = JestGlobals.test
local act = ReactTestingLibrary.act
local render = ReactTestingLibrary.render
local waitFor = ReactTestingLibrary.waitFor

local store = Rodux.Store.new(function(state)
	return state
end, {
	ScreenSize = Vector2.new(1280, 720),
}, {
	Rodux.thunkMiddleware,
})

local virtualEvent = {
	id = "1",
}

test("clicking Get Notified triggers onConfirm", function()
	local onConfirm = jest.fn()

	local element = withMockProviders({
		EventNotificationsModal = React.createElement(EventNotificationsModal, {
			virtualEvent = virtualEvent,
			onConfirm = function()
				onConfirm()
			end,
		}),
	}, {
		store = store,
		mockNavigation = {
			goBack = jest.fn(),
		},
	})

	local result = render(element)

	waitFor(function()
		expect(result.container.AbsoluteSize).never.toBe(Vector2.zero)
	end):await()

	local getNotified = result.getByText("Enable")

	act(function()
		Rhodium.Element.new(getNotified):click()
	end)

	expect(onConfirm).toHaveBeenCalledTimes(1)
end)

test("clicking Not Now triggers onClose", function()
	local onClose = jest.fn()

	local element = withMockProviders({
		-- Need to wrap the modal so that the Not Now button appears on screen
		Wrapper = React.createElement("Frame", {
			Size = UDim2.fromOffset(1280, 720),
		}, {
			EventNotificationsModal = React.createElement(EventNotificationsModal, {
				virtualEvent = virtualEvent,
				onClose = function()
					onClose()
				end,
			}),
		}),
	}, {
		store = store,
		mockNavigation = {
			goBack = jest.fn(),
		},
	})

	local result = render(element)
	local notNow = result.getByText("Not Now")

	waitFor(function()
		expect(result.container.AbsoluteSize).never.toBe(Vector2.zero)
	end):await()

	act(function()
		Rhodium.Element.new(notNow):click()
	end)

	expect(onClose).toHaveBeenCalledTimes(1)
end)
