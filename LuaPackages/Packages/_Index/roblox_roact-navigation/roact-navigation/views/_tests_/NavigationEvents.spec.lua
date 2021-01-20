-- upstream https://github.com/react-navigation/react-navigation/blob/20e2625f351f90fadadbf98890270e43e744225b/packages/core/src/views/__tests__/NavigationEvents.test.js

return function()
	local root = script.Parent.Parent.Parent
	local Packages = root.Parent
	local Cryo = require(Packages.Cryo)
	local Roact = require(Packages.Roact)
	local NavigationEvents = require(script.Parent.Parent.NavigationEvents)
	local NavigationContext = require(root.views.NavigationContext)
	local Events = require(root.Events)
	local createSpy = require(root.utils.createSpy)

	local function createPropListener()
		return createSpy()
	end

	local EVENT_TO_PROP_NAME = {
		[Events.WillFocus] = "onWillFocus",
		[Events.DidFocus] = "onDidFocus",
		[Events.WillBlur] = "onWillBlur",
		[Events.DidBlur] = "onDidBlur",
	};

	local function createEventListenersProp()
		return {
			onWillFocus = createPropListener(),
			onDidFocus = createPropListener(),
			onWillBlur = createPropListener(),
			onDidBlur = createPropListener(),
		}
	end

	local function createTestNavigationAndHelpers()
		local NavigationListenersAPI = (function()
			local listeners = {
				[Events.WillFocus] = {},
				[Events.DidFocus] = {},
				[Events.WillBlur] = {},
				[Events.DidBlur] = {},
			}

			return {
				add = function(eventName, handler)
					table.insert(listeners[eventName], handler)
				end,
				remove = function(eventName, handler)
					listeners[eventName] = Cryo.List.filter(listeners[eventName], function(current)
						return current ~= handler
					end)
				end,
				get = function(eventName)
					return listeners[eventName]
				end,
				call = function(eventName)
					for _, listener in ipairs(listeners[eventName]) do
						listener()
					end
				end,
			}
		end)()

		local navigation = {
			addListener = createSpy(function(eventName, handler)
				NavigationListenersAPI.add(eventName, handler)

				return {
					remove = function()
						return NavigationListenersAPI.remove(eventName, handler)
					end,
				}
			end),
		}

		return {
			navigation = navigation,
			NavigationListenersAPI = NavigationListenersAPI,
		}
	end

	describe("NavigationEvents", function()
		it(
			"add all listeners on mount and remove them on unmount, even without any event prop provided (see #5058)",
			function()
				local helper = createTestNavigationAndHelpers()
				local navigation = helper.navigation
				local NavigationListenersAPI = helper.NavigationListenersAPI

				local tree = Roact.mount(
					Roact.createElement(NavigationEvents, {navigation = navigation})
				)

				expect(#NavigationListenersAPI.get(Events.WillFocus)).to.equal(1)
				expect(#NavigationListenersAPI.get(Events.DidFocus)).to.equal(1)
				expect(#NavigationListenersAPI.get(Events.WillBlur)).to.equal(1)
				expect(#NavigationListenersAPI.get(Events.DidBlur)).to.equal(1)

				Roact.unmount(tree)
				expect(#NavigationListenersAPI.get(Events.WillFocus)).to.equal(0)
				expect(#NavigationListenersAPI.get(Events.DidFocus)).to.equal(0)
				expect(#NavigationListenersAPI.get(Events.WillBlur)).to.equal(0)
				expect(#NavigationListenersAPI.get(Events.DidBlur)).to.equal(0)
			end
		)

		it("support context-provided navigation", function()
			local helper = createTestNavigationAndHelpers()
			local navigation = helper.navigation
			local NavigationListenersAPI = helper.NavigationListenersAPI

			local tree = Roact.mount(
				Roact.createElement(NavigationContext.Provider, {
					value = navigation
				}, Roact.createElement(NavigationEvents))
			)

			expect(#NavigationListenersAPI.get(Events.WillFocus)).to.equal(1)
			expect(#NavigationListenersAPI.get(Events.DidFocus)).to.equal(1)
			expect(#NavigationListenersAPI.get(Events.WillBlur)).to.equal(1)
			expect(#NavigationListenersAPI.get(Events.DidBlur)).to.equal(1)

			Roact.unmount(tree)
			expect(#NavigationListenersAPI.get(Events.WillFocus)).to.equal(0)
			expect(#NavigationListenersAPI.get(Events.DidFocus)).to.equal(0)
			expect(#NavigationListenersAPI.get(Events.WillBlur)).to.equal(0)
			expect(#NavigationListenersAPI.get(Events.DidBlur)).to.equal(0)
		end)

		it("wire props listeners to navigation listeners", function()
			local helper = createTestNavigationAndHelpers()
			local navigation = helper.navigation
			local NavigationListenersAPI = helper.NavigationListenersAPI

			local eventListenerProps = createEventListenersProp()

			Roact.mount(
				Roact.createElement(NavigationEvents, Cryo.Dictionary.join(
					{navigation = navigation},
					eventListenerProps
				))
			)

			local function checkPropListenerIsCalled(eventName, propName)
				expect(eventListenerProps[propName].callCount).to.equal(0)
				NavigationListenersAPI.call(eventName)
				expect(eventListenerProps[propName].callCount).to.equal(1)
			end

			checkPropListenerIsCalled(Events.WillFocus, "onWillFocus")
			checkPropListenerIsCalled(Events.DidFocus, "onDidFocus")
			checkPropListenerIsCalled(Events.WillBlur, "onWillBlur")
			checkPropListenerIsCalled(Events.DidBlur, "onDidBlur")
		end)

		it("wires props listeners to latest navigation updates", function()
			local helper = createTestNavigationAndHelpers()
			local navigation = helper.navigation
			local NavigationListenersAPI = helper.NavigationListenersAPI
			local nextHelper = createTestNavigationAndHelpers()
			local nextNavigation = nextHelper.navigation
			local nextNavigationListenersAPI = nextHelper.NavigationListenersAPI

			local eventListenerProps = createEventListenersProp()
			local tree = Roact.mount(
				Roact.createElement(NavigationEvents, Cryo.Dictionary.join(
					{navigation = navigation},
					eventListenerProps
				))
			)

			for eventName, propName in pairs(EVENT_TO_PROP_NAME) do
				expect(eventListenerProps[propName].callCount).to.equal(0)
				NavigationListenersAPI.call(eventName)
				expect(eventListenerProps[propName].callCount).to.equal(1)
			end

			Roact.update(
				tree,
				Roact.createElement(NavigationEvents, Cryo.Dictionary.join(
					{navigation = nextNavigation},
					eventListenerProps
				))
			)

			for eventName, propName in pairs(EVENT_TO_PROP_NAME) do
				NavigationListenersAPI.call(eventName)
				expect(eventListenerProps[propName].callCount).to.equal(1)
				nextNavigationListenersAPI.call(eventName)
				expect(eventListenerProps[propName].callCount).to.equal(2)
			end
		end)

		it(
			"wire latest props listener to navigation listeners on updates (support closure/arrow functions update)",
			function()
				local helper = createTestNavigationAndHelpers()
				local navigation = helper.navigation
				local NavigationListenersAPI = helper.NavigationListenersAPI

				local tree = Roact.mount(
					Roact.createElement(NavigationEvents, Cryo.Dictionary.join(
						{navigation = navigation},
						createEventListenersProp()
					))
				)

				Roact.update(tree, Roact.createElement(NavigationEvents, {
					navigation = navigation,
					onWillBlur = function()
						error("should not be called")
					end,
					onDidFocus = function()
						error("should not be called")
					end,
				}))
				Roact.update(tree, Roact.createElement(NavigationEvents, Cryo.Dictionary.join(
					{navigation = navigation},
					createEventListenersProp()
				)))

				local latestEventListenerProps = createEventListenersProp()

				Roact.update(tree, Roact.createElement(NavigationEvents, Cryo.Dictionary.join(
					{navigation = navigation},
					latestEventListenerProps
				)))

				local function checkLatestPropListenerCalled(eventName,  propName)
					expect(latestEventListenerProps[propName].callCount).to.equal(0)
					NavigationListenersAPI.call(eventName)
					expect(latestEventListenerProps[propName].callCount).to.equal(1)
				end

				checkLatestPropListenerCalled(Events.WillFocus, "onWillFocus")
				checkLatestPropListenerCalled(Events.DidFocus, "onDidFocus")
				checkLatestPropListenerCalled(Events.WillBlur, "onWillBlur")
				checkLatestPropListenerCalled(Events.DidBlur, "onDidBlur")
			end
		)
	end)
end
