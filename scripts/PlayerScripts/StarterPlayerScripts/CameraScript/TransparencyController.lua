-- SolarCrane

local MAX_TWEEN_RATE = 2.8 -- per second

local function clamp(low, high, num)
	return (num > high and high or num < low and low or num)
end

local math_floor = math.floor

local function Round(num, places)
	local decimalPivot = 10^places
	return math_floor(num * decimalPivot + 0.5) / decimalPivot
end

local function CreateTransparencyController()
	local module = {}


	local LastUpdate = tick()
	local TransparencyDirty = false
	local Enabled = false
	local LastTransparency = nil

	local DescendantAddedConn, DescendantRemovingConn = nil, nil
	local ToolDescendantAddedConns = {}
	local ToolDescendantRemovingConns = {}
	local CachedParts = {}

	local function HasToolAncestor(object)
		if object.Parent == nil then return false end
		return object.Parent:IsA('Tool') or HasToolAncestor(object.Parent)
	end

	local function IsValidPartToModify(part)
		if part:IsA('BasePart') or part:IsA('Decal') then
			return not HasToolAncestor(part)
		end
		return false
	end

	local function CachePartsRecursive(object)
		if object then
			if IsValidPartToModify(object) then
				CachedParts[object] = true
				TransparencyDirty = true
			end
			for _, child in pairs(object:GetChildren()) do
				CachePartsRecursive(child)
			end
		end
	end

	local function TeardownTransparency()
		for child, _ in pairs(CachedParts) do
			child.LocalTransparencyModifier = 0
		end
		CachedParts = {}
		TransparencyDirty = true
		LastTransparency = nil

		if DescendantAddedConn then
			DescendantAddedConn:disconnect()
			DescendantAddedConn = nil
		end
		if DescendantRemovingConn then
			DescendantRemovingConn:disconnect()
			DescendantRemovingConn = nil
		end
		for object, conn in pairs(ToolDescendantAddedConns) do
			conn:disconnect()
			ToolDescendantAddedConns[object] = nil
		end
		for object, conn in pairs(ToolDescendantRemovingConns) do
			conn:disconnect()
			ToolDescendantRemovingConns[object] = nil
		end
	end

	local function SetupTransparency(character)
		TeardownTransparency()

		if DescendantAddedConn then DescendantAddedConn:disconnect() end
		DescendantAddedConn = character.DescendantAdded:connect(function(object)
			-- This is a part we want to invisify
			if IsValidPartToModify(object) then
				CachedParts[object] = true
				TransparencyDirty = true
			-- There is now a tool under the character
			elseif object:IsA('Tool') then
				if ToolDescendantAddedConns[object] then ToolDescendantAddedConns[object]:disconnect() end
				ToolDescendantAddedConns[object] = object.DescendantAdded:connect(function(toolChild)
					CachedParts[toolChild] = nil
					if toolChild:IsA('BasePart') or toolChild:IsA('Decal') then
						-- Reset the transparency
						toolChild.LocalTransparencyModifier = 0
					end
				end)
				if ToolDescendantRemovingConns[object] then ToolDescendantRemovingConns[object]:disconnect() end
				ToolDescendantRemovingConns[object] = object.DescendantRemoving:connect(function(formerToolChild)
					wait() -- wait for new parent
					if character and formerToolChild and formerToolChild:IsDescendantOf(character) then
						if IsValidPartToModify(formerToolChild) then
							CachedParts[formerToolChild] = true
							TransparencyDirty = true
						end
					end
				end)
			end
		end)
		if DescendantRemovingConn then DescendantRemovingConn:disconnect() end
		DescendantRemovingConn = character.DescendantRemoving:connect(function(object)
			if CachedParts[object] then
				CachedParts[object] = nil
				-- Reset the transparency
				object.LocalTransparencyModifier = 0
			end
		end)
		CachePartsRecursive(character)
	end


	function module:SetEnabled(newState)
		if Enabled ~= newState then
			Enabled = newState
			self:Update()
		end
	end

	function module:SetSubject(subject)
		local character = nil
		if subject and subject:IsA("Humanoid") then
			character = subject.Parent
		end
		if subject and subject:IsA("VehicleSeat") and subject.Occupant then
			character = subject.Occupant.Parent
		end
		if character then
			SetupTransparency(character)
		else
			TeardownTransparency()
		end
	end

	function module:Update()
		local instant = false
		local now = tick()
		local currentCamera = workspace.CurrentCamera

		if currentCamera then
			local transparency = 0
			if not Enabled then
				instant = true
			else
				local distance = (currentCamera.Focus.p - currentCamera.CoordinateFrame.p).magnitude
				transparency = (7 - distance) / 5
				if transparency < 0.5 then
					transparency = 0
				end

				if LastTransparency then
					local deltaTransparency = transparency - LastTransparency
					-- Don't tween transparency if it is instant or your character was fully invisible last frame
					if not instant and transparency < 1 and LastTransparency < 0.95 then
						local maxDelta = MAX_TWEEN_RATE * (now - LastUpdate)
						deltaTransparency = clamp(-maxDelta, maxDelta, deltaTransparency)
					end
					transparency = LastTransparency + deltaTransparency
				else
					TransparencyDirty = true
				end

				transparency = clamp(0, 1, Round(transparency, 2))
			end

			if TransparencyDirty or LastTransparency ~= transparency then
				for child, _ in pairs(CachedParts) do
					child.LocalTransparencyModifier = transparency
				end
				TransparencyDirty = false
				LastTransparency = transparency
			end
		end
		LastUpdate = now
	end

	return module
end

return CreateTransparencyController
