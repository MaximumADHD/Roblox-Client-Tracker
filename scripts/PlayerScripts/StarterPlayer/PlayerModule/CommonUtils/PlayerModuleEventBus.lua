--!strict
-- Shared EventBus instance for global PlayerModule-level coordination across scripts.
local EventBus = require(script.Parent:WaitForChild("EventBus"))

local bus = EventBus.new()
bus.data = {}
return bus
