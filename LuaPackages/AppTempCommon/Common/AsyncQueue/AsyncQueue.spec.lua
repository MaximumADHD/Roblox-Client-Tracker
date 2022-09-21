return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local AsyncQueue = require(script.Parent.AsyncQueue)

	local function createHandler()
		local acquired = false

		local function getAcquired()
			return acquired
		end

		local function onAcquired()
			acquired = true
		end

		return getAcquired, onAcquired
	end

	it("should process multiple threads in FIFO order", function()
		local queue = AsyncQueue.new()

		local getAcquired1, onAcquired1 = createHandler()
		local getAcquired2, onAcquired2 = createHandler()
		local getAcquired3, onAcquired3 = createHandler()

		expect(getAcquired1()).toEqual(false)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		local release1 = queue:request(onAcquired1)
		local release2 = queue:request(onAcquired2)
		local release3 = queue:request(onAcquired3)

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		release1()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(true)
		expect(getAcquired3()).toEqual(false)

		release2()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(true)
		expect(getAcquired3()).toEqual(true)

		release3()
		wait()
	end)

	it("should process multiple threads in FIFO order when enqueued non sequentially", function()
		local queue = AsyncQueue.new()

		local getAcquired1, onAcquired1 = createHandler()
		local getAcquired2, onAcquired2 = createHandler()
		local getAcquired3, onAcquired3 = createHandler()

		expect(getAcquired1()).toEqual(false)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		local release1 = queue:request(onAcquired1)
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		local release2 = queue:request(onAcquired2)
		local release3 = queue:request(onAcquired3)

		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		release1()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(true)
		expect(getAcquired3()).toEqual(false)

		release2()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(true)
		expect(getAcquired3()).toEqual(true)

		release3()
		wait()
	end)

	it("should skip released threads", function()
		local queue = AsyncQueue.new()

		local getAcquired1, onAcquired1 = createHandler()
		local getAcquired2, onAcquired2 = createHandler()
		local getAcquired3, onAcquired3 = createHandler()

		expect(getAcquired1()).toEqual(false)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		local release1 = queue:request(onAcquired1)
		local release2 = queue:request(onAcquired2)
		local release3 = queue:request(onAcquired3)

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		release2()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		release1()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(true)

		release3()
		wait()
	end)

	it("should skip released threads when released in the same callstack", function()
		local queue = AsyncQueue.new()

		local getAcquired1, onAcquired1 = createHandler()
		local getAcquired2, onAcquired2 = createHandler()
		local getAcquired3, onAcquired3 = createHandler()

		expect(getAcquired1()).toEqual(false)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		local release1 = queue:request(onAcquired1)
		local release2 = nil
		release2 = queue:request(function()
			onAcquired2()
			release2()
		end)
		local release3 = queue:request(onAcquired3)

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(false)
		expect(getAcquired3()).toEqual(false)

		release1()
		wait()

		expect(getAcquired1()).toEqual(true)
		expect(getAcquired2()).toEqual(true)
		expect(getAcquired3()).toEqual(true)

		release3()
		wait()
	end)
end
