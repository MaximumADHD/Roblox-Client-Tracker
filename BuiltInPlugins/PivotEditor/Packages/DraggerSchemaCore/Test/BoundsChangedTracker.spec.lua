return function()
	local Selection = game:GetService("Selection")

	local DraggerSchemaCore = script.Parent.Parent
	local Packages = DraggerSchemaCore.Parent
	local DraggerFramework = Packages.DraggerFramework
	local DraggerContext_FixtureImpl = require(DraggerFramework.Implementation.DraggerContext_FixtureImpl)
	local BoundsChangedTracker = require(DraggerSchemaCore.BoundsChangedTracker)

	local function createTracker(handler)
		return BoundsChangedTracker.new(
			DraggerContext_FixtureImpl.new(nil, Selection),
			handler)
	end

	local function dummySelectionInfo(parts, attachments)
		parts = parts or {}
		attachments = attachments or {}
		return {
			getAllAttachments = function() return attachments end,
			getObjectsToTransform = function() return parts end,
		}
	end

	it("should error if installed more than once", function()
		expect(function()
			local tracker = createTracker()
			tracker:install()
			tracker:install()
		end).to.throw()
	end)

	it("should error if uninstalled when not installed", function()
		expect(function()
			local tracker = createTracker()
			tracker:uninstall()
		end).to.throw()

		expect(function()
			local tracker = createTracker()
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

		local tracker = createTracker(handler)
		tracker:install()
		tracker:setSelection(dummySelectionInfo({part1, part2}))

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

		local tracker = createTracker(handler)
		tracker:setSelection(dummySelectionInfo({part}))

		part.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(false)
	end)

	it("should not track changes after uninstall", function()
		local notified = false
		local function handler()
			notified = true
		end

		local part = Instance.new("Part")

		local tracker = createTracker(handler)
		tracker:install()
		tracker:setSelection(dummySelectionInfo({part}))
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

		local tracker = createTracker(handler)
		tracker:install()
		tracker:setSelection(dummySelectionInfo({part}))
		tracker:setSelection(dummySelectionInfo({}))

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

		local tracker = createTracker(handler)
		tracker:install()
		tracker:setSelection(dummySelectionInfo({part1}))
		tracker:setSelection(dummySelectionInfo({part2}))

		part1.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(false)

		part2.CFrame = CFrame.new(1, 0, 0)
		expect(notified).to.equal(true)
	end)
end
