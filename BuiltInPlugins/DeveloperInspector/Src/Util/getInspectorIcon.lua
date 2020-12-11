local InspectorIcons = {
	Branch = 5923556358,
	Consumer = 5923556689,
	Fragment = 5923557006,
	Functional = 5923557211,
	Portal = 5923557429,
	Provider = 5923557657,
	Pure = 5923557814,
	Stateful = 5923557987,
}

local function getClassIcon(className: string)
	local StudioService  = game:GetService("StudioService")
	return StudioService:GetClassIcon(className)
end

local function getInspectorIcon(icon: string)
	if InspectorIcons[icon] then
		return {
			Image = "rbxassetid://" .. InspectorIcons[icon],
			ImageRectSize = Vector2.new(24, 24),
			ImageRectOffset = Vector2.new(0, 0)
		}
	else
		local ok, info = pcall(function()
			return getClassIcon(icon)
		end)
		if ok then
			return info
		else
			return getClassIcon("Folder")
		end
	end
end

return getInspectorIcon