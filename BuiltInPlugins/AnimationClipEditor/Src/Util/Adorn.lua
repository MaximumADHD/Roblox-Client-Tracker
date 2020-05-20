local Adorn = {}

function Adorn:Sphere(name, adornee, transparency, color, z)
	local sphere = Instance.new("SphereHandleAdornment", adornee)
	sphere.Name = "Sphere"
	sphere.AlwaysOnTop = true
	sphere.Color3 = color
	sphere.Adornee = adornee
	sphere.ZIndex = z
	sphere.Transparency = transparency
	return sphere
end

function Adorn:Line(name, adornee, thickness, color, transparency, z)
	local line = Instance.new("LineHandleAdornment", adornee)
	line.Name = "Line"
	line.AlwaysOnTop = true
	line.Thickness = thickness
	line.Color3 = color
	line.Adornee = adornee
	line.ZIndex = z
	line.Transparency = transparency
	return line
end

function Adorn:Cone(name, adornee, transparency, color, z)
	local cone = Instance.new("ConeHandleAdornment", adornee)
	cone.Name = "Cone"
	cone.AlwaysOnTop = true
	cone.Color3 = color
	cone.Adornee = adornee
	cone.ZIndex = z
	cone.Transparency = transparency
	return cone
end

return Adorn