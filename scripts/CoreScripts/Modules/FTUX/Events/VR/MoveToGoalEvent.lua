local EventType = require(script.Parent.Parent.EventType)

type Event = EventType.Event

local MoveToGoalEvent = {
	Name = "MoveToGoalEvent",
}

local connection: RBXScriptConnection?

local function spawnGoalArea(startPos: Vector3, endPos: Vector3)
	local height = 1
	local part = Instance.new("Part")
	part.Anchored = true
	part.CanCollide = false
	part.Transparency = 1
	part.Size = Vector3.new(math.abs(endPos.X - startPos.X), height, math.abs(endPos.Z - startPos.Z))
	part.Position = Vector3.new((endPos.X + startPos.X) / 2, 6.3, (endPos.Z + startPos.Z) / 2) -- set the position to the left corner
	part.Parent = workspace

	return part
end

function MoveToGoalEvent.StartEvent(increaseCurrentIndex)
	-- Spawn Goal Area
	local startPos = Vector3.new(-8, 6.3, -31)
	local endPos = Vector3.new(9, 6.3, -49)
	local goal = spawnGoalArea(startPos, endPos)

	task.wait(1) --Small Delay before starting event

	connection = goal.Touched:Connect(function(hit)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent :: Model)
		if player then
			--Remove Goal
			goal:Destroy()

			--Advance to next slide
			task.wait(0.2)
			increaseCurrentIndex()

			--Disconnect Event
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
	end)
end

function MoveToGoalEvent.StopEvent()
	if connection then
		connection:Disconnect()
		connection = nil
	end
end

return MoveToGoalEvent :: Event
