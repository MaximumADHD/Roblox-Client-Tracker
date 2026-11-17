--[[
	Modesty layer for a resolved HumanoidDescription.

	CheckApplyDefaultClothingAsync returns a new description when it adds a
	default shirt or pants, and nil when the description already satisfies the
	rule. Nil keeps the description that was passed in. A thrown call does too,
	and warns: AvatarEditorService is not reachable from every host, and the
	scene still has to render.

	A call that does not return in time keeps the description too. The engine
	call takes no timeout, and its HTTP request uses the engine default of 60
	seconds plus any time it spent queued. Waiting that out would hold the
	scene build.
]]

local RunService = game:GetService("RunService")

local checkApplyDefaultClothing = require(script.Parent.checkApplyDefaultClothing)

-- Past this, render without the layer. The engine request can still finish later.
local TIMEOUT_SECONDS = 8

local function pumpScheduler()
	-- task.wait never resumes on an RCC job that has not called RunService:Run().
	if RunService:IsRunning() then
		task.wait()
	else
		wait(0)
	end
end

local function applyDefaultClothing(description: HumanoidDescription, timeoutSeconds: number?): HumanoidDescription
	local timeout = if timeoutSeconds ~= nil then timeoutSeconds else TIMEOUT_SECONDS
	local finished = false
	local ok = false
	local result: any = nil
	task.spawn(function()
		ok, result = pcall(checkApplyDefaultClothing, description)
		finished = true
	end)

	local started = os.clock()
	while not finished and os.clock() - started < timeout do
		pumpScheduler()
	end

	if not finished then
		warn("applyDefaultClothing: timed out")
		return description
	end
	if not ok then
		warn(`applyDefaultClothing: {result}`)
		return description
	end
	if typeof(result) == "Instance" and result:IsA("HumanoidDescription") then
		return result
	end
	return description
end

return applyDefaultClothing
