-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/__tests__/act.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local jest = JestGlobals.jest

local Promise = require(Packages.Promise)

local React = require(Packages.React)
local ParentModule = require(script.Parent.Parent)
local render = ParentModule.render
local fireEvent = ParentModule.fireEvent
local screen = ParentModule.screen

test("render calls useEffect immediately", function()
	local effectCb = jest.fn()
	local function MyUselessComponent()
		React.useEffect(effectCb)
		return nil
	end
	render(React.createElement(MyUselessComponent, nil))
	expect(effectCb).toHaveBeenCalledTimes(1)
end)

test("findByTestId returns the element", function()
	return Promise.resolve()
		:andThen(function()
			local ref = React.createRef()
			render(React.createElement("Frame", { ref = ref, [React.Tag] = "data-testid=foo" }))
			expect(screen.findByTestId("foo"):expect()).toBe(ref.current)
		end)
		:expect()
end)

test("fireEvent triggers useEffect calls", function()
	local effectCb = jest.fn()
	local function Counter()
		React.useEffect(effectCb)
		local count, setCount = React.useState(0)
		return React.createElement("TextButton", {
			Size = UDim2.new(0, 100, 0, 100),
			[React.Event.Activated] = function()
				return setCount(count + 1)
			end,
			Text = count,
		})
	end
	local buttonNode = render(React.createElement(Counter, nil)).container:GetChildren()[1]
	task.wait()
	effectCb:mockClear()
	fireEvent.click(buttonNode)
	expect(buttonNode).toHaveTextContent("1")
	expect(effectCb).toHaveBeenCalledTimes(1)
end)

-- ROBLOX deviation START: hydrate is not supported
-- it("calls to hydrate will run useEffects", function()
-- 	local effectCb = jest.fn()
-- 	local function MyUselessComponent()
-- 		React.useEffect(effectCb)
-- 		return nil
-- 	end
-- 	render(React.createElement(MyUselessComponent, nil), { hydrate = true })
-- 	expect(effectCb).toHaveBeenCalledTimes(1)
-- end)
-- ROBLOX deviation END
return {}
