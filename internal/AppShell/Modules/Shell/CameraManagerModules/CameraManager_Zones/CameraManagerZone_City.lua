local runService = game:GetService("RunService")


local Zones = workspace:FindFirstChild("Zones")
local City = Zones and Zones:FindFirstChild("City")

local CFramer = {}; do
	function CFramer.GetAllParts(model, list)
		list = list or {}

		if model:IsA("BasePart") then
			list[#list + 1] = model
		end

		local children = model:GetChildren()
		for i = 1, #children do
			CFramer.GetAllParts(children[i], list)
		end

		return list
	end

	function CFramer.GetAllPartOffsets(parts, cframeBase)
		-- The offset is a part's cframe relative to cframeBase

		local offsets = {}
		local cframeBase_inv = cframeBase:inverse()
		for i = 1, #parts do
			offsets[i] = cframeBase_inv * parts[i].CFrame
		end

		return offsets
	end

	function CFramer.newCFramer(parts, offsets)
		return function(cf)
			for i = 1, #parts do
				parts[i].CFrame = cf * offsets[i]
			end
		end
	end

	function CFramer.newCFramerFromModel(model, cframeBase)
		local parts = CFramer.GetAllParts(model)
		local offsets = CFramer.GetAllPartOffsets(parts, cframeBase)
		return CFramer.newCFramer(parts, offsets)
	end
end

local renderTrains;
spawn(function()
	while not runService:IsRunning() do wait(0.1) end

	if not City then
		City = workspace:WaitForChild("Zones"):WaitForChild("City")
	end

	local exampleTrain = City.Train:Clone()
	local function newTrain()
		local train = exampleTrain:Clone()
		train.Parent = workspace
		return CFramer.newCFramerFromModel(train.Parts, train.Track.CFrame)
	end


	local function newTrack(part, direction)
		if not direction then
			direction = math.random(0, 1) * 2 - 1
		end
		local length = part.Size.Y
		local cf = part.CFrame * CFrame.Angles(math.pi / 2 * (direction + 1), 0, 0)
		local cf0 = cf * CFrame.new(0, -length/2, 0)
		return function(train, time)
			local distance = time * 48
			if distance >= 0 and distance <= length then
				train(cf0 * CFrame.new(0, distance, 0))
			end
		end, part.Size.Y
	end

	local train0 = newTrain()
	local train1 = newTrain()
	local train2 = newTrain()
	local train3 = newTrain()
	local train4 = newTrain()
	local train5 = newTrain()
	local train6 = newTrain()

	local tracks = City.Tracks

	local track0 = newTrack(tracks.TrackA1)--, 1)
	local track1 = newTrack(tracks.TrackA2)--, -1)
	local track2 = newTrack(tracks.TrackA3)--, 1)
	local track3 = newTrack(tracks.TrackB1)--, 1)
	local track4 = newTrack(tracks.TrackB2)--, -1)
	local track5 = newTrack(tracks.TrackC1)--, -1)
	local track6 = newTrack(tracks.TrackC2)--, 1)
	local track7 = newTrack(tracks.TrackC3)--, 1)

	function renderTrains(timestamp)

		track0(train0, timestamp % 15)
		track1(train1, (timestamp - 3) % 20)
		track2(train2, (timestamp - 5.5) % 18)

		track3(train3, (timestamp - 5.5) % 25)

		track6(train4, (timestamp - 2.5) % 30)
	end
end)


local renderFlows;

spawn(function()

	if not City then
		City = workspace:WaitForChild("Zones"):WaitForChild("City")
	end


	local function newFlow(model, flowLength)

		local parts = {}
		local partParts = {}
		local partPartOffsets = {}
		local cframes = {}

		for j, part in pairs(model:GetChildren()) do
			local i = tonumber(part.Name)
			parts[i] = part
			cframes[i] = part.CFrame
			local pParts = {}
			local pPartOffsets = {}
			for i, pPart in pairs(part:GetChildren()) do
				if pPart:IsA("BasePart") then
					pParts[#pParts + 1] = pPart
					pPartOffsets[#pPartOffsets + 1] =  part.CFrame:inverse() * pPart.CFrame
				end
			end
			partParts[i] = pParts
			partPartOffsets[i] = pPartOffsets
		end


		local partCycle = 0
		local unitOffset = 0
		local timestamp0 = 0
		return function(timestamp1)
			if timestamp1 < timestamp0 then
				timestamp0 = timestamp1
			end
			local unit = (timestamp1 - timestamp0) / flowLength + unitOffset

			if unit >= 1 then
				partCycle = (partCycle + math.floor(unit)) % #parts
				unit = unit % 1
				unitOffset = unit
				timestamp0 = timestamp1 -- - deltaTime * flowLength
			end

			for x = 0, #parts - 2 do
				local i = (x - partCycle) % #cframes + 1
				local cf = cframes[x + 1]:lerp(cframes[x + 2], unit)
				parts[i].CFrame = cf
				local pParts = partParts[i]
				local pPartOffsets = partPartOffsets[i]
				for n = 1, #pParts do
					pParts[n].CFrame = cf * pPartOffsets[n]
				end
			end

		end

	end

	local flow1 = newFlow(City.Pipe1.Flow, 0.5)
	local flow2 = newFlow(City.Pipe2.Flow, 0.65)

	function renderFlows(t)
		flow1(t)
		flow2(t)
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
		local t = tick() - timestamp0
		if renderFlows then
			renderFlows(t)
		end
		if renderTrains then
			renderTrains(t)
		end
	end)

end

return self
