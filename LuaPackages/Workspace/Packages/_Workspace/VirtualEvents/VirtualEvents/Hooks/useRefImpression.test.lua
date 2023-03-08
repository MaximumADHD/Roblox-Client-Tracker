local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local React = require(VirtualEvents.Parent.React)
local useRefImpression = require(script.Parent.useRefImpression)

local render = ReactTestingLibrary.render
local screen = ReactTestingLibrary.screen

local OFF_SCREEN_POSITION = UDim2.fromOffset(5000, 5000)

type Props = {
	position: UDim2,
	onImpression: () -> (),
}

local function FrameWithImpression(props: Props)
	local ref = React.createRef()

	useRefImpression(ref, props.onImpression)

	return React.createElement("Frame", {
		Position = props.position,
		Size = UDim2.fromOffset(100, 100),
		ref = ref,
	})
end

local onImpression = jest.fn()

afterEach(function()
	jest.resetAllMocks()
end)

it("should immediately run the callback when the gui is already on screen", function()
	render(React.createElement(FrameWithImpression, {
		position = UDim2.fromOffset(0, 0),
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(1)
end)

it("should run the callback when the gui moves into view", function()
	print(require(game.CorePackages.Workspace.Packages.LuauPolyfill).util.inspect(screen.container))
	local result = render(React.createElement(FrameWithImpression, {
		position = OFF_SCREEN_POSITION,
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(0)

	result.rerender(React.createElement(FrameWithImpression, {
		position = UDim2.fromOffset(0, 0),
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(1)
end)

it("should only run the callback once", function()
	local result = render(React.createElement(FrameWithImpression, {
		position = OFF_SCREEN_POSITION,
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(0)

	result.rerender(React.createElement(FrameWithImpression, {
		position = UDim2.fromOffset(0, 0),
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(1)

	result.rerender(React.createElement(FrameWithImpression, {
		position = OFF_SCREEN_POSITION,
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(1)

	result.rerender(React.createElement(FrameWithImpression, {
		position = UDim2.fromOffset(0, 0),
		onImpression = onImpression,
	}))

	expect(onImpression).toHaveBeenCalledTimes(1)
end)
