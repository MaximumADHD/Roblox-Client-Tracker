local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local Measurer = require(Root.RobloxAdapter.Measurer)

local expect = JestGlobals.expect
local it = JestGlobals.it

it("publishes the latest automatic size from the settle callback", function()
	local absoluteSizeReads = 0
	local sizeSignal = {
		Connect = function()
			return {
				Disconnect = function() end,
			}
		end,
	}
	local instance
	instance = setmetatable({}, {
		__index = function(_, key)
			if key == "AbsoluteSize" then
				absoluteSizeReads += 1
				return if absoluteSizeReads == 1 then Vector2.new(200, 40) else Vector2.new(200, 80)
			elseif key == "GetPropertyChangedSignal" then
				return function(_, property)
					expect(property).toBe("AbsoluteSize")
					return sizeSignal
				end
			end
			return nil
		end,
	})
	local measuredLength = nil
	local measurer = Measurer.attach({
		instance = instance :: any,
		axis = Core.Axis.Y,
		getIdentity = function()
			return {
				itemKey = "row",
				itemIndex = 1,
				assignmentGeneration = 1,
				itemRevision = 0,
			}
		end,
		onItemMeasured = function(_, length)
			measuredLength = length
		end,
	})

	measurer.scheduleSettle()
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()

	expect(absoluteSizeReads).toBe(2)
	expect(measuredLength).toBe(80)
	measurer.disconnect()
end)

it("keeps reassigned settle work pending and publishes only current provenance", function()
	local sizeSignal = {
		Connect = function()
			return {
				Disconnect = function() end,
			}
		end,
	}
	local instance = setmetatable({}, {
		__index = function(_, key)
			if key == "AbsoluteSize" then
				return Vector2.new(200, 40)
			elseif key == "GetPropertyChangedSignal" then
				return function()
					return sizeSignal
				end
			end
			return nil
		end,
	})
	local identity = {
		itemKey = "same",
		itemIndex = 1,
		assignmentGeneration = 1,
		itemRevision = 0,
	}
	local measurements = {}
	local measurer = Measurer.attach({
		instance = instance :: any,
		axis = Core.Axis.Y,
		getIdentity = function()
			return identity
		end,
		onItemMeasured = function(currentIdentity, length)
			table.insert(measurements, { identity = currentIdentity, length = length })
		end,
	})

	measurer.scheduleSettle()
	identity = {
		itemKey = "same",
		itemIndex = 1,
		assignmentGeneration = 2,
		itemRevision = 1,
	}
	measurer.scheduleSettle()

	expect(measurer.getPendingCount()).toBe(2)
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()

	expect(measurer.getPendingCount()).toBe(0)
	expect(measurements).toEqual({
		{ identity = identity, length = 40 },
	})
	measurer.disconnect()
end)
