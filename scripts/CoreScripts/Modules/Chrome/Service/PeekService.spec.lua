return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest
	local PeekService = require(script.Parent.PeekService)

	-- Seems like Jest's fake timers don't work in v2, so we're opting to
	-- use real time with some smaller delays
	local MOCK_PEEK_LIFETIME_SEC = 1 / 20
	local MOCK_PEEK_COOLDOWN_SEC = MOCK_PEEK_LIFETIME_SEC * 2

	local peekService: PeekService.PeekService

	beforeEach(function()
		peekService = PeekService.new()
		peekService.PEEK_COOLDOWN_SEC = MOCK_PEEK_COOLDOWN_SEC
	end)

	afterEach(function()
		peekService:destroy()
	end)

	it("should register new Peeks", function()
		peekService:configurePeek("peek_id", {
			integrations = { "foo", "bar" },
		})

		expect(peekService._peekConfigs["peek_id"]).toBeDefined()
	end)

	it("should show a Peek immediately if there are none in the queue", function()
		peekService:configurePeek("peek_id", {
			integrations = { "foo", "bar" },
		})

		peekService:queuePeek("peek_id")

		expect(peekService._currentPeek).toBe("peek_id")
		expect(peekService._peekQueue).toEqual({})
	end)

	it("should never queue more than one of the same Peek", function()
		peekService:configurePeek("peek_id", {
			integrations = { "foo", "bar" },
		})

		peekService:queuePeek("peek_id")
		peekService:queuePeek("peek_id")
		peekService:queuePeek("peek_id")
		peekService:queuePeek("peek_id")

		expect(peekService._currentPeek).toBe("peek_id")
		expect(peekService._peekQueue).toEqual({})
	end)

	it("should process queued Peeks over time", function()
		peekService:configurePeek("first_peek", {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		})

		peekService:configurePeek("second_peek", {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		})

		peekService:configurePeek("third_peek", {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		})

		peekService:queuePeek("first_peek")
		peekService:queuePeek("second_peek")
		peekService:queuePeek("third_peek")

		expect(peekService._currentPeek).toBe("first_peek")
		expect(peekService._peekQueue).toEqual({ "second_peek", "third_peek" })

		-- Advance only halfway to verify that nothing changes
		task.wait(MOCK_PEEK_LIFETIME_SEC / 2)

		expect(peekService._currentPeek).toBe("first_peek")
		expect(peekService._peekQueue).toEqual({ "second_peek", "third_peek" })

		task.wait(MOCK_PEEK_LIFETIME_SEC / 2)

		-- Duration for first_peek has elapsed. Now a cooldown starts before the
		-- next Peek can be shown
		expect(peekService._currentPeek).toBeUndefined()
		expect(peekService._peekQueue).toEqual({ "second_peek", "third_peek" })

		task.wait(MOCK_PEEK_COOLDOWN_SEC)

		expect(peekService._currentPeek).toBe("second_peek")
		expect(peekService._peekQueue).toEqual({ "third_peek" })

		task.wait(MOCK_PEEK_LIFETIME_SEC)

		expect(peekService._currentPeek).toBeUndefined()
		expect(peekService._peekQueue).toEqual({ "third_peek" })

		task.wait(MOCK_PEEK_COOLDOWN_SEC)

		expect(peekService._currentPeek).toBe("third_peek")
		expect(peekService._peekQueue).toEqual({})

		task.wait(MOCK_PEEK_LIFETIME_SEC)

		expect(peekService._currentPeek).toBeUndefined()
		expect(peekService._peekQueue).toEqual({})
	end)

	it("should allow a Peek to be dismissed early", function()
		peekService:configurePeek("first_peek", {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		})

		peekService:configurePeek("second_peek", {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		})

		peekService:queuePeek("first_peek")
		peekService:queuePeek("second_peek")

		expect(peekService._currentPeek).toBe("first_peek")
		expect(peekService._peekQueue).toEqual({ "second_peek" })

		peekService:dismissPeek("first_peek")

		-- Dismissal initiates the cooldown so second_peek must wait to be shown
		expect(peekService._currentPeek).toBeUndefined()
		expect(peekService._peekQueue).toEqual({ "second_peek" })

		task.wait(MOCK_PEEK_COOLDOWN_SEC)

		expect(peekService._currentPeek).toBe("second_peek")
		expect(peekService._peekQueue).toEqual({})
	end)

	it("should get the current Peek ID", function()
		expect(peekService:getCurrentPeek()).toBeUndefined()

		peekService:configurePeek("peek_id", {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		})

		peekService:queuePeek("peek_id")

		expect(peekService:getCurrentPeek()).toBe("peek_id")

		task.wait(MOCK_PEEK_LIFETIME_SEC)

		expect(peekService:getCurrentPeek()).toBeUndefined()
	end)

	it("should get the config for a Peek", function()
		local peekConfig = {
			integrations = { "foo", "bar" },
			lifetime = {
				duration = MOCK_PEEK_LIFETIME_SEC,
			},
		}

		peekService:configurePeek("peek_id", peekConfig)

		expect(peekService:getPeekConfig("peek_id")).toBe(peekConfig)
		expect(peekService:getPeekConfig("doesnt_exist")).toBeUndefined()
	end)

	describe("events", function()
		it("should fire onPeekQueued when a Peek is queued", function()
			local listener = jest.fn()

			peekService:configurePeek("peek_id", {
				integrations = { "foo", "bar" },
				lifetime = {
					duration = MOCK_PEEK_LIFETIME_SEC,
				},
			})

			peekService.onPeekQueued:connect(listener)

			peekService:queuePeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(1)
		end)

		it("should fire onPeekShown when a Peek is shown", function()
			local listener = jest.fn()

			peekService:configurePeek("first_peek", {
				integrations = { "foo", "bar" },
				lifetime = {
					duration = MOCK_PEEK_LIFETIME_SEC,
				},
			})

			peekService:configurePeek("second_peek", {
				integrations = { "foo", "bar" },
				lifetime = {
					duration = MOCK_PEEK_LIFETIME_SEC,
				},
			})

			peekService.onPeekShown:connect(listener)

			peekService:queuePeek("first_peek")
			peekService:queuePeek("second_peek")

			-- Fired immediately for first_peek since there's no others in the
			-- queue, then after the lifetime duration second_peek is shown
			expect(listener).toHaveBeenCalledTimes(1)
			task.wait(MOCK_PEEK_LIFETIME_SEC)
			task.wait(MOCK_PEEK_COOLDOWN_SEC)
			expect(listener).toHaveBeenCalledTimes(2)
		end)

		it("should fire onPeekDismissed when a Peek is dismissed early", function()
			local listener = jest.fn()

			peekService:configurePeek("peek_id", {
				integrations = { "foo", "bar" },
				lifetime = {
					duration = MOCK_PEEK_LIFETIME_SEC,
				},
			})

			peekService.onPeekDismissed:connect(listener)

			peekService:queuePeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(0)

			-- Wait a moment to ensure the Peek is shown
			task.wait(MOCK_PEEK_LIFETIME_SEC / 2)

			peekService:dismissPeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(1)
		end)

		it("should fire onPeekHidden when a Peek is hidden", function()
			local listener = jest.fn()

			peekService:configurePeek("peek_id", {
				integrations = { "foo", "bar" },
				lifetime = {
					duration = MOCK_PEEK_LIFETIME_SEC,
				},
			})

			peekService.onPeekHidden:connect(listener)

			peekService:queuePeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(0)
			task.wait(MOCK_PEEK_LIFETIME_SEC)
			expect(listener).toHaveBeenCalledTimes(1)

			-- Wait for the cooldown to wear off from the last Peek
			task.wait(MOCK_PEEK_COOLDOWN_SEC)

			-- It should also trigger for dismissal
			peekService:queuePeek("peek_id")
			peekService:dismissPeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(2)
		end)

		it("should fire onPeekChanged under the same conditions as every other event", function()
			local listener = jest.fn()

			peekService:configurePeek("peek_id", {
				integrations = { "foo", "bar" },
				lifetime = {
					duration = MOCK_PEEK_LIFETIME_SEC,
				},
			})

			peekService.onPeekChanged:connect(listener)

			peekService:queuePeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(2)

			task.wait(MOCK_PEEK_LIFETIME_SEC)

			expect(listener).toHaveBeenCalledTimes(3)

			-- Wait for the cooldown to wear off from the last Peek
			task.wait(MOCK_PEEK_COOLDOWN_SEC)

			expect(listener).toHaveBeenCalledTimes(3)

			peekService:queuePeek("peek_id")
			peekService:dismissPeek("peek_id")

			expect(listener).toHaveBeenCalledTimes(6)
		end)
	end)
end
