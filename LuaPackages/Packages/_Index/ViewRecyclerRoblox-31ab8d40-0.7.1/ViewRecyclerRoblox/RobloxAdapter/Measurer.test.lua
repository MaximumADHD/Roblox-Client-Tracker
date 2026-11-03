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
	local state = {}
	local measurer = Measurer.attach({
		instance = instance :: any,
		axis = Core.Axis.Y,
		getState = function()
			return state
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

it("defers every read until its caller reports the content rendered", function()
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
				return Vector2.new(200, 18)
			elseif key == "GetPropertyChangedSignal" then
				return function()
					return sizeSignal
				end
			end
			return nil
		end,
	})
	local rendered = false
	local measuredLengths = {}
	local state = {}
	local measurer = Measurer.attach({
		instance = instance :: any,
		axis = Core.Axis.Y,
		getState = function()
			return state
		end,
		isRendered = function()
			return rendered
		end,
		onItemMeasured = function(_, length)
			table.insert(measuredLengths, length)
		end,
	})

	measurer.measureNow()
	measurer.scheduleSettle()
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()
	expect(measuredLengths).toEqual({})

	rendered = true
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()
	expect(measuredLengths).toEqual({ 18 })
	measurer.disconnect()
end)

it("suppresses repeated lengths only for the same physical identity", function()
	local absoluteSize = Vector2.new(200, 40)
	local sizeChanged
	local instance = setmetatable({}, {
		__index = function(_, key)
			if key == "AbsoluteSize" then
				return absoluteSize
			elseif key == "GetPropertyChangedSignal" then
				return function()
					return {
						Connect = function(_, callback)
							sizeChanged = callback
							return {
								Disconnect = function() end,
							}
						end,
					}
				end
			end
			return nil
		end,
	})
	local identity = {
		itemKey = "row",
		itemIndex = 1,
		itemRevision = 0,
	}
	local firstIdentity = identity
	local measurements = {}
	local measurer = Measurer.attach({
		instance = instance :: any,
		axis = Core.Axis.Y,
		getState = function()
			return identity
		end,
		onItemMeasured = function(currentIdentity, length)
			table.insert(measurements, { identity = currentIdentity, length = length })
		end,
	})

	measurer.scheduleSettle()
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()
	sizeChanged()
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()
	absoluteSize = Vector2.new(200, 60)
	sizeChanged()
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()
	identity = {
		itemKey = "row",
		itemIndex = 1,
		itemRevision = 0,
	}
	sizeChanged()
	game:GetService("RunService").Heartbeat:Wait()
	task.wait()

	expect(measurements).toEqual({
		{ identity = firstIdentity, length = 40 },
		{ identity = firstIdentity, length = 60 },
		{ identity = identity, length = 60 },
	})
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
		itemRevision = 0,
	}
	local measurements = {}
	local measurer = Measurer.attach({
		instance = instance :: any,
		axis = Core.Axis.Y,
		getState = function()
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
