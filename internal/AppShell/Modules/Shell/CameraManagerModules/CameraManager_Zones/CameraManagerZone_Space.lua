local runService = game:GetService("RunService")

local CFrameOffsetter = {};

do
	function CFrameOffsetter.GetAllParts(model, list)
		list = list or {}

		if model:IsA("BasePart") then
			list[#list + 1] = model
		end

		local children = model:GetChildren()
		for i = 1, #children do
			CFrameOffsetter.GetAllParts(children[i], list)
		end

		return list
	end
	function CFrameOffsetter.GetAllPartOffsets(parts, cframeBase)
		-- The offset is a part's cframe relative to cframeBase

		local offsets = {}
		local cframeBase_inv = cframeBase:inverse()
		for i = 1, #parts do
			offsets[i] = cframeBase_inv * parts[i].CFrame
		end

		return offsets
	end
	function CFrameOffsetter.newOffsetter(parts, offsets, cframeBase)
		return function(offset)
			local cf = cframeBase * offset
			for i = 1, #parts do
				parts[i].CFrame = cf * offsets[i]
			end
		end
	end
	function CFrameOffsetter.newOffsetterFromModel(model, cframeBase)
		local parts = CFrameOffsetter.GetAllParts(model)
		local offsets = CFrameOffsetter.GetAllPartOffsets(parts, cframeBase)
		return CFrameOffsetter.newOffsetter(parts, offsets, cframeBase)
	end
end

local newOffsetterFromModel = CFrameOffsetter.newOffsetterFromModel

local renderStation;
spawn(function()
	while not runService:IsRunning() do wait(0.1) end

	local Space = workspace:WaitForChild("Zones"):WaitForChild("Space")
	local model = Space.Station
	local cframeBase = model.rings.center.CFrame

	local ring1 = newOffsetterFromModel(model.rings.Ring1, cframeBase)
	local ring2 = newOffsetterFromModel(model.rings.Ring2, cframeBase)
	local ring3 = newOffsetterFromModel(model.rings.Ring3, cframeBase)
	local station = newOffsetterFromModel(model.station, cframeBase)


	function renderStation(t)
		ring1(
			CFrame.Angles(0, (t / 6 % (math.pi * 2)), 0)
			* CFrame.new(0, math.sin(t / 4 % (math.pi * 2)) * 1, 0)
		)
		ring2(
			CFrame.Angles(0, -(t / 4 % (math.pi * 2)), 0)
			* CFrame.new(0, math.sin(2 + t / 2 % (math.pi * 2)) * 1, 0)
		)
		ring3(
			CFrame.Angles(0, (t / 3.5 % (math.pi * 2)), 0)
			* CFrame.new(0, math.sin(1 + t / 2 % (math.pi * 2)) * 1, 0)
		)

		station(
			CFrame.Angles(0, (t / -32 % (math.pi * 2)), 0)
			* CFrame.new(0, math.sin(t / 4 % (math.pi * 2)) * 3 - 2, 0)
		)
	end
end)

local renderOrbit;
spawn(function()
	while not runService:IsRunning() do wait(0.1) end

	local Space = workspace:WaitForChild("Zones"):WaitForChild("Space")

	local model = Space.Orbit
	local cframeBase = model.center.CFrame

	local cuteMoonThings = newOffsetterFromModel(model, cframeBase)

	local ringParts = {Space.Disk, Space.Disk2, Space.Disk3}

	local rings = {}
	for i = 1, #ringParts do
		rings[i] = newOffsetterFromModel(ringParts[i], ringParts[i].CFrame)
	end

	function renderOrbit(t)
		cuteMoonThings(
			CFrame.Angles((t / 80 % (math.pi * 2)), (t / 60 % (math.pi * 2)), (t / 40 % (math.pi * 2)))
		)
		for i = 1, #rings do
			rings[i](
				CFrame.Angles(0, 1 / 4 + (t / 60 % (math.pi * 2)), 0)
			)
		end
	end
end)




local connection;

local self = {}

function self:SetEnabled(enabled)
	if enabled and connection then
		return
	end
	if connection then
		connection:disconnect()
		connection = nil
	end
	if not enabled then
		return
	end

	local timestamp0 = tick()
	connection = game:GetService("RunService").RenderStepped:connect(function()
		local t = (tick() - timestamp0)
		if renderStation then
			renderStation(t)
		end
		if renderOrbit then
			renderOrbit(t)
		end
	end)

end

return self
