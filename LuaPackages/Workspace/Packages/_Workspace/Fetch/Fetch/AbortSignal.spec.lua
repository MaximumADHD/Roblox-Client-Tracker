local Packages = script.Parent.Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local jest = require(Packages.Dev.JestGlobals).jest

local AbortSignal = require(script.Parent.AbortSignal).AbortSignal

return function()
	it("should create an Abort signal", function()
		local signal = AbortSignal.abort("you can't do that")
		local callback = jest.fn()
		-- signal:connect warns when jest.fn() is passed directly
		local disconnect = signal:connect(function()
			callback()
		end)
		signal:fire()

		local framesWaited = 0
		repeat
			task.wait()
			framesWaited += 1
		until #callback.mock.calls > 0 or framesWaited > 2

		-- The signal should fire within a frame or two
		jestExpect(framesWaited).toBeLessThanOrEqual(2)
		jestExpect(callback).toHaveBeenCalled()
		disconnect:Disconnect()
		jestExpect(function()
			signal:throwIfAborted()
		end).toThrow("you can't do that")
	end)

	it("should create a timeout signal", function()
		-- Signal should fire after 50 ms.
		local signal = AbortSignal.timeout(50)
		local callback = jest.fn()
		-- signal:connect warns when jest.fn() is passed directly
		local disconnect = signal:connect(function()
			callback()
		end)

		-- Count how long it takes for the signal to fire.
		local timeWaited = 0
		repeat
			timeWaited += task.wait()
		until #callback.mock.calls > 0 or timeWaited > 0.1

		-- Time waited should be about 50ms, and no more than 100 ms.
		jestExpect(timeWaited).toBeGreaterThanOrEqual(0.05)
		jestExpect(timeWaited).toBeLessThan(0.1)
		jestExpect(callback).toHaveBeenCalled()
		disconnect:Disconnect()
		jestExpect(function()
			signal:throwIfAborted()
		end).toThrow("TimeoutError")
	end)
end
