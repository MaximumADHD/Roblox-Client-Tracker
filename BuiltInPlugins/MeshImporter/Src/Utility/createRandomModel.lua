local Colors = {
	Color3.new(0.95, 0, 0),
	Color3.new(0.6, 0, 0),
	Color3.new(0, 0.95, 0),
	Color3.new(0, 0.6, 0),
	Color3.new(0, 0, 0.95),
	Color3.new(0, 0, 0.6),
	Color3.new(0.8, 0.8, 0.8),
	Color3.new(0.6, 0.6, 0.6),
	Color3.new(0.4, 0.4, 0.4),
}

local r = 4
local s = 5
local n = 10

return function()
	local model = Instance.new("Model")
	model.Name = "Root"

	local lastColor

	for i = 1, n do
		local part = Instance.new("Part", model)
		part.Name = "Part" .. tostring(i)

		local px = math.random(-r, r)
		local py = math.random(-r, r)
		local pz = math.random(-r, r)
		part.CFrame = CFrame.new(px, py, pz)

		local sx = math.random(1, s)
		local sy = math.random(1, s)
		local sz = math.random(1, s)
		part.Size = Vector3.new(sx, sy, sz)

		local color = lastColor
		while color == lastColor do
			color = Colors[math.random(1, #Colors)]
		end
		part.Color = color
		lastColor = color
	end

	return model
end
