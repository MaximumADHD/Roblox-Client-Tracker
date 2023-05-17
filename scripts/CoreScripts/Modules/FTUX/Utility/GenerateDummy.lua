local partsWithId = {}
local awaitRef = {}

local root = {
	ID = 0,
	Type = "Model",
	Properties = {
		Name = "Safety Bubble Dummy",
		PrimaryPart = "_R:1_",
	},
	Children = {
		{
			ID = 1,
			Type = "Part",
			Properties = {
				Transparency = 0.5,
				Name = "HumanoidRootPart",
				Size = Vector3.new(2, 2, 1),
				Anchored = true,
				BottomSurface = Enum.SurfaceType.Smooth,
				TopSurface = Enum.SurfaceType.Smooth,
			},
			Children = {
				{
					ID = 2,
					Type = "Motor6D",
					Properties = {
						Part1 = "_R:3_",
						Name = "Root Hip",
						C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
						C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
						Part0 = "_R:1_",
						MaxVelocity = 0.10000000149011612,
					},
					Children = {},
				},
			},
		},
		{
			ID = 3,
			Type = "Part",
			Properties = {
				Size = Vector3.new(2, 2, 1),
				BottomSurface = Enum.SurfaceType.Smooth,
				Name = "Torso",
				TopSurface = Enum.SurfaceType.Smooth,
			} :: any,
			Children = {
				{
					ID = 4,
					Type = "Motor6D",
					Properties = {
						Part1 = "_R:9_",
						Name = "Left Hip",
						C1 = CFrame.new(
							-0.5,
							1,
							0,
							-4.371138828673793e-08,
							0,
							-1,
							0,
							0.9999999403953552,
							0,
							1,
							0,
							-4.371138828673793e-08
						),
						C0 = CFrame.new(
							-1,
							-1,
							0,
							-4.371138828673793e-08,
							0,
							-1,
							0,
							0.9999999403953552,
							0,
							1,
							0,
							-4.371138828673793e-08
						),
						Part0 = "_R:3_",
						MaxVelocity = 0.10000000149011612,
					},
					Children = {},
				},
				{
					ID = 5,
					Type = "Motor6D",
					Properties = {
						Part1 = "_R:10_",
						Name = "Right Hip",
						C1 = CFrame.new(
							0.5,
							1,
							0,
							-4.371138828673793e-08,
							0,
							1,
							0,
							0.9999999403953552,
							0,
							-1,
							0,
							-4.371138828673793e-08
						),
						C0 = CFrame.new(
							1,
							-1,
							0,
							-4.371138828673793e-08,
							0,
							1,
							-0,
							0.9999999403953552,
							0,
							-1,
							0,
							-4.371138828673793e-08
						),
						Part0 = "_R:3_",
						MaxVelocity = 0.10000000149011612,
					},
					Children = {},
				},
				{
					ID = 6,
					Type = "Motor6D",
					Properties = {
						Part1 = "_R:11_",
						Name = "Left Shoulder",
						C1 = CFrame.new(
							0.5,
							0.5,
							0,
							-4.371138828673793e-08,
							0,
							-1,
							0,
							0.9999999403953552,
							0,
							1,
							0,
							-4.371138828673793e-08
						),
						C0 = CFrame.new(
							-1,
							0.5,
							0,
							-4.371138828673793e-08,
							0,
							-1,
							0,
							0.9999999403953552,
							0,
							1,
							0,
							-4.371138828673793e-08
						),
						Part0 = "_R:3_",
						MaxVelocity = 0.10000000149011612,
					},
					Children = {},
				},
				{
					ID = 7,
					Type = "Motor6D",
					Properties = {
						Part1 = "_R:12_",
						Name = "Right Shoulder",
						C1 = CFrame.new(
							-0.5,
							0.5,
							0,
							-4.371138828673793e-08,
							0,
							1,
							0,
							0.9999999403953552,
							0,
							-1,
							0,
							-4.371138828673793e-08
						),
						C0 = CFrame.new(
							1,
							0.5,
							0,
							-4.371138828673793e-08,
							0,
							1,
							-0,
							0.9999999403953552,
							0,
							-1,
							0,
							-4.371138828673793e-08
						),
						Part0 = "_R:3_",
						MaxVelocity = 0.10000000149011612,
					},
					Children = {},
				},
				{
					ID = 8,
					Type = "Motor6D",
					Properties = {
						Part1 = "_R:13_",
						Name = "Neck",
						C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
						C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
						Part0 = "_R:3_",
						MaxVelocity = 0.10000000149011612,
					},
					Children = {},
				},
			},
		},
		{
			ID = 9,
			Type = "Part",
			Properties = {
				Size = Vector3.new(1, 2, 1),
				Name = "Left Leg",
				CanCollide = false,
				BottomSurface = Enum.SurfaceType.Smooth,
				CFrame = CFrame.new(-0.5, -1.9999998807907104, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1),
				Position = Vector3.new(-0.5, -1.9999998807907104, 0),
				TopSurface = Enum.SurfaceType.Smooth,
			},
			Children = {},
		} :: any,
		{
			ID = 10,
			Type = "Part",
			Properties = {
				Size = Vector3.new(1, 2, 1),
				Name = "Right Leg",
				CanCollide = false,
				BottomSurface = Enum.SurfaceType.Smooth,
				CFrame = CFrame.new(0.5, -1.9999998807907104, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1),
				Position = Vector3.new(0.5, -1.9999998807907104, 0),
				TopSurface = Enum.SurfaceType.Smooth,
			},
			Children = {},
		} :: any,
		{
			ID = 11,
			Type = "Part",
			Properties = {
				Size = Vector3.new(1, 2, 1),
				Name = "Left Arm",
				CanCollide = false,
				BottomSurface = Enum.SurfaceType.Smooth,
				CFrame = CFrame.new(-1.5, 5.960464477539063e-08, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1),
				Position = Vector3.new(-1.5, 5.960464477539063e-08, 0),
				TopSurface = Enum.SurfaceType.Smooth,
			},
			Children = {},
		} :: any,
		{
			ID = 12,
			Type = "Part",
			Properties = {
				Size = Vector3.new(1, 2, 1),
				Name = "Right Arm",
				CanCollide = false,
				BottomSurface = Enum.SurfaceType.Smooth,
				CFrame = CFrame.new(1.5, 5.960464477539063e-08, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1),
				Position = Vector3.new(1.5, 5.960464477539063e-08, 0),
				TopSurface = Enum.SurfaceType.Smooth,
			},
			Children = {},
		} :: any,
		{
			ID = 13,
			Type = "Part",
			Properties = {
				Name = "Head",
				Position = Vector3.new(0, 1.5, 0),
				Size = Vector3.new(2, 1, 1),
				CFrame = CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				BottomSurface = Enum.SurfaceType.Smooth,
				TopSurface = Enum.SurfaceType.Smooth,
			},
			Children = {
				{
					ID = 14,
					Type = "Decal",
					Properties = {
						Name = "Face",
						Texture = "rbxasset://textures/face.png",
					},
					Children = {},
				},
				{
					ID = 15,
					Type = "SpecialMesh",
					Properties = {
						Scale = Vector3.new(1.25, 1.25, 1.25),
					},
					Children = {},
				} :: any,
			},
		} :: any,
		{
			ID = 16,
			Type = "Humanoid",
			Properties = {},
			Children = {},
		} :: any,
	},
} :: any

local function Scan(item, parent, position, orientation): any
	local obj = Instance.new(item.Type) :: any

	if item.ID then
		local awaiting = awaitRef[item.ID]
		if awaiting then
			awaiting[1][awaiting[2]] = obj
			awaitRef[item.ID] = nil
		else
			partsWithId[item.ID] = obj
		end
	end
	for p, v in pairs(item.Properties) do
		if type(v) == "string" then
			local id = tonumber(v:match("^_R:(%w+)_$"))
			if id then
				if partsWithId[id] then
					v = partsWithId[id]
				else
					awaitRef[id] = { obj, p }
					v = nil
				end
			end
		end
		obj[p] = v
	end
	for _, c in pairs(item.Children) do
		Scan(c, obj, position, orientation)
	end
	obj.Parent = parent
	if obj:IsA("Part") then
		obj.Position += position
		obj.Orientation += orientation
		obj.Anchored = true
	end
	return obj :: any
end

return function(position, orientation)
	return Scan(root, nil, position, orientation) :: any
end
