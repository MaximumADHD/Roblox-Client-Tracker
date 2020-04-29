local Framework = script.Parent.Parent
 BoundsChangedTracker = require(Framework.Utility.BoundsChangedTracker)

return function()
	it("should error if installed more than once", function()
		expect(function()
			local tracker = BoundsChangedTracker.new()
			tracker:install()
			tracker:install()
		end).to.throw()
	end)

	it("should error if uninstalled when not installed", function()
		expect(function()
			local tracker = BoundsChangedTracker.new()
			tracker:uninstall()
		end).to.throw()

		expect(function()
			local tracker = BoundsChangedTracker.new()
			tracker:install()
			tracker:uninstall()
			tracker:uninstall()
		end).to.throw()
	end)

	it("should track changes to multiple parts", function()
		local lastChangedPart = nil
		local notifiedCount = 0
		local function handler(part)
			notifiedCount = notifiedCount + 1
			lastChangedPart = part
		end

		local part1 = Instance.new("Part")
		local part2 = Instance.new("Part")

		local tracker = BoundsChangedTracker.new(handler)
		tracker:install()
		tracker:setParts({part1, part2})

		part1.CFrame = CFrame.new(0, 0, 1)
		expect(notifiedCount).to.equal(1)
		expect(lastChangedPart).to.equal(part1)

		part2.CFrame = CFrame.new(0, 0, 1)
		expect(notifiedCount).to.equal(2)
		expect(lastChangedPart).to.equal(part2)

		part1.Size = Vector3.new(2, 2, 2)
		part2.Size = Vector3.new(2, 2, 2)
		expect(notifiedCount).to.equal(4)

		tracker:uninstall()
	end)

	it("should not track changes before install", function()
		local notified = false
		local function handler()
			notified = true
		end

		local part = Instance.new("Part")

		local tracker = BoundsChangedTracker.new(handler)
		tracker:setParts({part})

		part.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(false)
	end)

	it("should not track changes after uninstall", function()
		local notified = false
		local function handler()
			notified = true
		end

		local part = Instance.new("Part")

		local tracker = BoundsChangedTracker.new(handler)
		tracker:install()
		tracker:setParts({part})
		tracker:uninstall()

		part.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(false)
	end)

	it("should clear parts when setting empty part list", function()
		local notified = false
		local function handler()
			notified = true
		end

		local part = Instance.new("Part")

		local tracker = BoundsChangedTracker.new(handler)
		tracker:install()
		tracker:setParts({part})
		tracker:setParts({})

		part.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(false)
	end)

	it("should replace parts when setting parts", function()
		local notified = false
		local function handler()
			notified = true
		end

		local part1 = Instance.new("Part")
		local part2 = Instance.new("Part")

		local tracker = BoundsChangedTracker.new(handler)
		tracker:install()
		tracker:setParts({part1})
		tracker:setParts({part2})

		part1.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(false)

		part2.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(true)
	end)
end
