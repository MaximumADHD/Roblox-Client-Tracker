-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/stopwatch.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local jest = JestGlobals.jest

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
local clearInterval = LuauPolyfill.clearInterval
local setInterval = LuauPolyfill.setInterval
local setTimeout = LuauPolyfill.setTimeout
type Object = LuauPolyfill.Object

local Promise = require(Packages.Promise)

local React = require(Packages.React)

local ParentModule = require(script.Parent.Parent)
local render = ParentModule.render
local fireEvent = ParentModule.fireEvent
local screen = ParentModule.screen

local StopWatch = React.Component:extend("StopWatch")

function StopWatch:init()
	self.state = { lapse = 0, running = false }
	self.handleRunClick = function()
		self:setState(function(state)
			if state.running then
				clearInterval(self.timer)
			else
				local startTime = DateTime.now().UnixTimestampMillis - self.state.lapse
				self.timer = setInterval(function()
					self:setState({ lapse = DateTime.now().UnixTimestampMillis - startTime })
				end)
			end
			return { running = not state.running }
		end)
	end
	self.handleClearClick = function()
		clearInterval(self.timer)
		self:setState({ lapse = 0, running = false })
	end
end

function StopWatch:componentWillUnmount()
	clearInterval(self.timer)
end

function StopWatch:render()
	local lapse, running = self.state.lapse, self.state.running

	return React.createElement(
		"Frame",
		nil,
		React.createElement("TextLabel", { Text = lapse .. " ms" }),
		React.createElement(
			"TextButton",
			{ [React.Event.Activated] = self.handleRunClick, Text = if running then "Stop" else "Start" }
		),
		React.createElement("TextButton", { [React.Event.Activated] = self.handleClearClick, Text = "Clear" })
	)
end

local function sleep(t)
	return Promise.new(function(resolve)
		return setTimeout(resolve, t)
	end)
end

test("unmounts a component", function()
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: replace spyOn with jest.fn
		console.error = jest.fn(function() end)
		-- ROBLOX deviation END
		local ref = render(React.createElement(StopWatch, nil))
		local unmount, container = ref.unmount, ref.container
		fireEvent.click(screen.getByText("Start"))
		unmount()
		-- hey there reader! You don't need to have an assertion like this one
		-- this is just me making sure that the unmount function works.
		-- You don't need to do this in your apps. Just rely on the fact that this works.
		expect(container).toBeEmptyDOMElement()
		-- just wait to see if the interval is cleared or not
		-- if it's not, then we'll call setState on an unmounted component
		-- and get an error.
		sleep(5):expect()
		-- eslint-disable-next-line no-console
		expect(console.error).toHaveBeenCalledTimes(
			-- ReactDOM.render is deprecated in React 18
			-- ROBLOX deviation START: React.version not available. Assume 17
			0
			-- ROBLOX deviation END
		)
	end)
end)
return {}
