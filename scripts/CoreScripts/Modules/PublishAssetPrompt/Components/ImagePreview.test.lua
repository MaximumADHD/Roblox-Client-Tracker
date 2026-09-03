local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local ReactTestingLibrary = require(CorePackages.Packages.Dev.ReactTestingLibrary)

local afterAll = JestGlobals.afterAll
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local act = ReactRoblox.act
local cleanup = ReactTestingLibrary.cleanup
local fireEvent = ReactTestingLibrary.fireEvent
local render = ReactTestingLibrary.render

local ROTATE_SECONDS = 3
local STEP_MILLIS = 1_000
local FRAME_MILLIS = 1_000 / 60
-- Comfortably longer than the crossfade, so the backdrop has reached its target.
local SETTLE_MILLIS = 500
local MID_FADE_MILLIS = 150

local ImagePreview = require(script.Parent.ImagePreview)

local function renderPreview(autoRotateSeconds: number?)
	return render(React.createElement(Foundation.FoundationProvider, {
		colorMode = Foundation.Enums.ColorMode.Dark,
	}, {
		Preview = React.createElement(ImagePreview, {
			imageContent = Content.fromUri("rbxassetid://0"),
			autoRotateSeconds = autoRotateSeconds,
		}),
	}))
end

local function advance(millis: number)
	act(function()
		jest.advanceTimersByTime(millis)
	end)
end

describe("ImagePreview", function()
	beforeAll(function()
		-- The crossfade advances once per frame, so the fake clock needs a frame duration.
		jest.useFakeTimers().setEngineFrameTime(FRAME_MILLIS)
	end)

	afterAll(function()
		jest.useRealTimers()
	end)

	afterEach(cleanup)

	it("fades to the backdrop behind the swatch that is picked", function()
		local result = renderPreview()
		local backdrop = result.getByTestId("ImagePreviewBackground")

		fireEvent.click(result.getByTestId("ImagePreviewBackgroundSwatchWhite"))
		advance(SETTLE_MILLIS)
		expect(backdrop.BackgroundColor3).toEqual(Color3.new(1, 1, 1))
		-- The backdrops have to be fully opaque, or they would hide the very content they exist to reveal.
		expect(backdrop.BackgroundTransparency).toBe(0)
		expect(backdrop.ImageTransparency).toBe(1)

		fireEvent.click(result.getByTestId("ImagePreviewBackgroundSwatchBlack"))
		advance(SETTLE_MILLIS)
		expect(backdrop.BackgroundColor3).toEqual(Color3.new(0, 0, 0))
		expect(backdrop.BackgroundTransparency).toBe(0)
		expect(backdrop.ImageTransparency).toBe(1)

		-- The checkerboard shares the instance, fading in as the flat background fades out.
		fireEvent.click(result.getByTestId("ImagePreviewBackgroundSwatchCheckerboard"))
		advance(SETTLE_MILLIS)
		expect(backdrop.BackgroundTransparency).toBe(1)
		expect(backdrop.ImageTransparency).toBe(0)
	end)

	it("crossfades through intermediate colours instead of cutting", function()
		local result = renderPreview()
		local backdrop = result.getByTestId("ImagePreviewBackground")

		fireEvent.click(result.getByTestId("ImagePreviewBackgroundSwatchWhite"))
		advance(MID_FADE_MILLIS)

		expect(backdrop.BackgroundColor3.R).toBeGreaterThan(0)
		expect(backdrop.BackgroundColor3.R).toBeLessThan(1)
	end)

	it("orders the swatches below the preview", function()
		local result = renderPreview()

		expect(result.getByTestId("ImagePreviewSwatches").LayoutOrder).toBeGreaterThan(
			result.getByTestId("ImagePreviewBackground").LayoutOrder
		)
	end)

	it("walks every backdrop over the rotate window and rests on the checkerboard", function()
		local result = renderPreview(ROTATE_SECONDS)
		local backdrop = result.getByTestId("ImagePreviewBackground")

		expect(backdrop.BackgroundColor3).toEqual(Color3.new(0, 0, 0))
		expect(backdrop.BackgroundTransparency).toBe(0)

		advance(STEP_MILLIS + SETTLE_MILLIS)
		expect(backdrop.BackgroundColor3).toEqual(Color3.new(1, 1, 1))
		expect(backdrop.BackgroundTransparency).toBe(0)

		advance(STEP_MILLIS + SETTLE_MILLIS)
		expect(backdrop.BackgroundTransparency).toBe(1)
		expect(backdrop.ImageTransparency).toBe(0)

		-- It walks the set once; it must not loop back around afterwards.
		advance(ROTATE_SECONDS * STEP_MILLIS)
		expect(backdrop.BackgroundTransparency).toBe(1)
		expect(backdrop.ImageTransparency).toBe(0)
	end)

	it("stops rotating once a swatch is picked", function()
		local result = renderPreview(ROTATE_SECONDS)
		local backdrop = result.getByTestId("ImagePreviewBackground")

		fireEvent.click(result.getByTestId("ImagePreviewBackgroundSwatchWhite"))
		advance(ROTATE_SECONDS * STEP_MILLIS)

		expect(backdrop.BackgroundColor3).toEqual(Color3.new(1, 1, 1))
		expect(backdrop.BackgroundTransparency).toBe(0)
	end)

	it("holds the first backdrop when no rotate window is given", function()
		local result = renderPreview(nil)
		local backdrop = result.getByTestId("ImagePreviewBackground")

		advance(ROTATE_SECONDS * STEP_MILLIS)

		expect(backdrop.BackgroundColor3).toEqual(Color3.new(0, 0, 0))
		expect(backdrop.BackgroundTransparency).toBe(0)
	end)
end)
