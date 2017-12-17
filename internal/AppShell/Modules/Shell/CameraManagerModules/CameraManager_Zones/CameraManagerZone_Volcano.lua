local runService = game:GetService("RunService")


local Volcano;
local lightning;

spawn(function()
	while not runService:IsRunning() do wait(0.1) end

	Volcano = workspace:WaitForChild("Zones"):WaitForChild("Volcano")
	lightning = Volcano.Lightning:GetChildren()
	for i = 1, #lightning do
		lightning[i].Parent = nil
	end
end)

local function playLighting(model)
	if not (model and Volcano) then
		return
	end
	model.Parent = Volcano.Lightning
	wait(0.125)
	model.Parent = nil
end



local connection;
local handle;

local self = {}

function self:SetEnabled(enabled)
	if enabled and connection then
		return
	end
	if connection then
		connection:disconnect()
		connection = nil
	end
	handle = nil
	if not enabled then
		return
	end

	local h = {} -- our handle
	handle = h -- Stops a previous loop
	coroutine.wrap(function()
		while handle == h do
			wait(math.random() * 16 + 1)

			if lightning then
				playLighting(lightning[math.random(1, #lightning)])
			end

		end
	end)()

	--[[
	local timestamp0 = tick()
	connection = game:GetService("RunService").RenderStepped:connect(function()
		local t = (tick() - timestamp0)
		--renderStation(t)
		--renderOrbit(t)
	end)
	--]]

end

return self
