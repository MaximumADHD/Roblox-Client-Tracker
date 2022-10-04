local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local categoryDefaults = {
	Materials = {
		Concrete = Enum.Material.Concrete,
		Fabric = Enum.Material.Fabric,
		Ground = Enum.Material.Ground,
		Metal = Enum.Material.Metal,
		Organic = Enum.Material.Ice,
		Plastic = Enum.Material.Plastic,
		Rock = Enum.Material.Rock,
		Stone = Enum.Material.Slate,
		Wood = Enum.Material.Wood,
	},
}

return function(path: _Types.Path): Enum.Material?
	local default = categoryDefaults

	for _, directory in path do
		default = default[directory]

		if not default then
			return default
		end
	end

	if type(default) == "table" then
		return nil
	else
		return default
	end
end
