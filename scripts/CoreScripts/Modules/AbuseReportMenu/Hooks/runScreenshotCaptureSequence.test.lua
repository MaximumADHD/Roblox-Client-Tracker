local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local runScreenshotCaptureSequence = require(script.Parent.runScreenshotCaptureSequence)

describe("runScreenshotCaptureSequence", function()
	local mockHide: any
	local mockShow: any
	local mockTakeScreenshot: any
	local heartbeatCallbacks: { () -> () }
	local mockRunService: any

	beforeEach(function()
		mockHide = jest.fn()
		mockShow = jest.fn()
		heartbeatCallbacks = {}
		mockTakeScreenshot = jest.fn().mockReturnValue(true)
		mockRunService = {
			Heartbeat = {
				Connect = jest.fn(function(_self, callback)
					table.insert(heartbeatCallbacks, callback)
					return {
						-- Mirror real disconnect so a fired-once handler stops running.
						Disconnect = function()
							local idx = table.find(heartbeatCallbacks, callback)
							if idx then
								table.remove(heartbeatCallbacks, idx)
							end
						end,
					}
				end),
			},
		}
	end)

	local function runSequence(overrides: { [string]: any }?)
		overrides = overrides or {}
		local callbacks = {
			hide = mockHide,
			show = mockShow,
			onScreenshotTaken = jest.fn(),
			onScreenshotUploaded = jest.fn(),
			onIdentificationCompleted = jest.fn(),
			onCaptureEnd = jest.fn(),
		}
		local waitFrames = (overrides :: any).waitFrames or 0
		runScreenshotCaptureSequence(callbacks, {
			takeScreenshot = mockTakeScreenshot,
			getVisibleAvatars = function()
				return {}, {}
			end,
			getVisibleAds = function()
				return {}, {}
			end,
			runService = mockRunService,
			getWaitFrames = function()
				return waitFrames
			end,
			getWaitTime = function()
				return 0
			end,
		})
		return callbacks
	end

	-- Advances the simulated Heartbeat by `count` frames.
	local function tick(count: number)
		for _ = 1, count do
			for _, callback in ipairs(heartbeatCallbacks) do
				callback()
			end
		end
	end

	it("hides immediately and takes the screenshot one frame later", function()
		local callbacks = runSequence()

		expect(mockHide).toHaveBeenCalledTimes(1)
		expect(mockTakeScreenshot).never.toHaveBeenCalled()

		tick(1)
		expect(mockTakeScreenshot).never.toHaveBeenCalled()
		expect(callbacks.onScreenshotTaken).never.toHaveBeenCalled()

		tick(1)
		expect(mockTakeScreenshot).toHaveBeenCalledTimes(1)
		expect(callbacks.onScreenshotTaken).toHaveBeenCalledTimes(1)
		expect(callbacks.onIdentificationCompleted).toHaveBeenCalledTimes(1)
	end)

	it("re-shows only after getWaitFrames frames have elapsed since hide", function()
		local callbacks = runSequence({ waitFrames = 10 })

		-- Screenshot lands on the 2nd frame, but re-show waits for the frame budget.
		tick(2)
		expect(mockTakeScreenshot).toHaveBeenCalledTimes(1)
		expect(mockShow).never.toHaveBeenCalled()
		expect(callbacks.onCaptureEnd).never.toHaveBeenCalled()

		-- Frame 10: still one short of the budget (re-show fires on frame 11).
		tick(8)
		expect(mockShow).never.toHaveBeenCalled()

		tick(1)
		expect(mockShow).toHaveBeenCalledTimes(1)
		expect(callbacks.onCaptureEnd).toHaveBeenCalledTimes(1)
	end)

	it("does not re-show or end the capture more than once", function()
		local callbacks = runSequence({ waitFrames = 2 })

		tick(10)

		expect(mockShow).toHaveBeenCalledTimes(1)
		expect(callbacks.onCaptureEnd).toHaveBeenCalledTimes(1)
		expect(mockTakeScreenshot).toHaveBeenCalledTimes(1)
	end)

	it("forwards the upload id to onScreenshotUploaded", function()
		mockTakeScreenshot = jest.fn(function(onScreenshotUploaded)
			onScreenshotUploaded("uploaded-shot")
			return true
		end)

		local callbacks = runSequence()
		tick(2)

		expect(callbacks.onScreenshotUploaded).toHaveBeenCalledTimes(1)
		expect(callbacks.onScreenshotUploaded).toHaveBeenCalledWith("uploaded-shot")
	end)
end)
