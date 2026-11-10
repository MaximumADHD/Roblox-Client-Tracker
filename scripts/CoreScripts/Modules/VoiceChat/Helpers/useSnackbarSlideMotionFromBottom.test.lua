local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local Foundation = require(CorePackages.Packages.Foundation)
local Otter = require(CorePackages.Packages.Otter)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mockDeviceInsets = { left = 0, top = 0, right = 0, bottom = 0 }

jest.mock(CorePackages.Workspace.Packages.Responsive, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.Responsive)
	local mocked = table.clone(actual)
	mocked.useDeviceInsets = function()
		return mockDeviceInsets
	end
	return mocked
end)

local useSnackbarSlideMotionFromBottom = require(script.Parent.useSnackbarSlideMotionFromBottom)

-- Foundation's snackbar guideline margin; Padding.XLarge at the default scale.
local DEFAULT_BOTTOM_MARGIN = 20
-- At 60 FPS, comfortably longer than the 200ms enter and 150ms exit.
local ANIMATION_FRAMES = 30

local HIDDEN_ANCHOR = Vector2.new(0.5, 0)
local HIDDEN_POSITION = UDim2.fromScale(0.5, 1)
local REST_ANCHOR = Vector2.new(0.5, 1)

local function restPosition(bottomMargin: number): UDim2
	return UDim2.new(0.5, 0, 1, -bottomMargin)
end

local motion: useSnackbarSlideMotionFromBottom.SnackbarSlideMotion
local container: ScreenGui?
local root: ReactRoblox.RootType?

type TestSnackbarProps = {
	renderKey: number,
	minBottomMargin: number?,
}

local function TestSnackbar(props: TestSnackbarProps)
	motion = useSnackbarSlideMotionFromBottom(props.minBottomMargin)
	return nil
end

local function render(renderKey: number?, minBottomMargin: number?)
	if not root then
		local screenGui = Instance.new("ScreenGui")
		container = screenGui
		root = ReactRoblox.createRoot(screenGui)
	end
	local mountedRoot = root :: ReactRoblox.RootType
	ReactRoblox.act(function()
		mountedRoot:render(React.createElement(Foundation.FoundationProvider, {}, {
			TestSnackbar = React.createElement(TestSnackbar, {
				renderKey = renderKey or 0,
				minBottomMargin = minBottomMargin,
			}),
		}))
	end)
end

local function setBottomInset(bottom: number)
	mockDeviceInsets = { left = 0, top = 0, right = 0, bottom = bottom }
end

local function stepAnimation(frames: number?)
	ReactRoblox.act(function()
		for _ = 1, frames or ANIMATION_FRAMES do
			Otter.__devAnimationStepSignal:Fire()
		end
	end)
end

local function exit(onExited: () -> ())
	ReactRoblox.act(function()
		motion.exit(onExited)
	end)
end

local function enter()
	ReactRoblox.act(function()
		motion.enter()
	end)
end

describe("useSnackbarSlideMotionFromBottom", function()
	local originalReducedMotion: boolean

	beforeEach(function()
		_G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ = true
		originalReducedMotion = UserGameSettings.ReducedMotion
		UserGameSettings.ReducedMotion = false
		setBottomInset(0)
	end)

	afterEach(function()
		local mountedRoot = root
		if mountedRoot then
			ReactRoblox.act(function()
				mountedRoot:unmount()
			end)
			root = nil
		end
		if container then
			container:Destroy()
			container = nil
		end
		UserGameSettings.ReducedMotion = originalReducedMotion
		_G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ = nil
	end)

	it("starts below the bottom edge and slides up to rest Foundation's snackbar margin above it", function()
		render()

		expect(motion.anchorPoint:getValue()).toEqual(HIDDEN_ANCHOR)
		expect(motion.position:getValue()).toEqual(HIDDEN_POSITION)

		stepAnimation()

		expect(motion.anchorPoint:getValue()).toEqual(REST_ANCHOR)
		expect(motion.position:getValue()).toEqual(restPosition(DEFAULT_BOTTOM_MARGIN))
	end)

	it("rests a given minimum margin above the bottom edge instead of the default", function()
		render(0, 12)
		stepAnimation()

		expect(motion.position:getValue()).toEqual(restPosition(12))
	end)

	it("rests the bottom safe-area inset above the edge when it exceeds the margin", function()
		setBottomInset(34)
		render()
		stepAnimation()

		expect(motion.position:getValue()).toEqual(restPosition(34))
	end)

	it("moves to the new resting spot when the bottom safe-area inset changes", function()
		render()
		stepAnimation()

		setBottomInset(34)
		render(1)
		stepAnimation()

		expect(motion.position:getValue()).toEqual(restPosition(34))
	end)

	it("calls onExited only after sliding back below the bottom edge", function()
		render()
		stepAnimation()
		local onExited = jest.fn()

		exit(onExited)
		expect(onExited).never.toHaveBeenCalled()

		stepAnimation()
		expect(onExited).toHaveBeenCalledTimes(1)
		expect(motion.anchorPoint:getValue()).toEqual(HIDDEN_ANCHOR)
		expect(motion.position:getValue()).toEqual(HIDDEN_POSITION)
	end)

	it("finishes exiting when the bottom safe-area inset changes mid-exit", function()
		render()
		stepAnimation()
		local onExited = jest.fn()

		exit(onExited)
		stepAnimation(2)
		setBottomInset(34)
		render(1)
		stepAnimation()

		expect(onExited).toHaveBeenCalledTimes(1)
		expect(motion.position:getValue()).toEqual(HIDDEN_POSITION)
	end)

	it("slides back up and never calls onExited when entered mid-exit", function()
		render()
		stepAnimation()
		local onExited = jest.fn()

		exit(onExited)
		stepAnimation(3)
		enter()
		stepAnimation()

		expect(onExited).never.toHaveBeenCalled()
		expect(motion.anchorPoint:getValue()).toEqual(REST_ANCHOR)
		expect(motion.position:getValue()).toEqual(restPosition(DEFAULT_BOTTOM_MARGIN))
	end)

	it("keeps an entrance on its original 200ms schedule when entered again", function()
		render()
		stepAnimation(3)

		enter()
		-- 13 frames in total pass 200ms.
		stepAnimation(10)

		expect(motion.position:getValue()).toEqual(restPosition(DEFAULT_BOTTOM_MARGIN))
	end)

	it("rests in place from the start and exits on the next frame when reduced motion is on", function()
		UserGameSettings.ReducedMotion = true
		render()

		expect(motion.anchorPoint:getValue()).toEqual(REST_ANCHOR)
		expect(motion.position:getValue()).toEqual(restPosition(DEFAULT_BOTTOM_MARGIN))

		local onExited = jest.fn()
		exit(onExited)
		stepAnimation(1)

		expect(onExited).toHaveBeenCalledTimes(1)
		expect(motion.position:getValue()).toEqual(HIDDEN_POSITION)
	end)
end)
