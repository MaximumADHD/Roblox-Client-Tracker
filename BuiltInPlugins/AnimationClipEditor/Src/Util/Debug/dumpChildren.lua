-- Debug method to dump an instance hierarchy
local function dump(instance: Instance, depth: number): string
	local s:string = instance.Name .. "\n"
	local prefix:string = string.rep("⋅⋅", depth)

	for _, child: Instance in pairs(instance:GetChildren()) do
		s = s .. prefix .. "⋅⋅" .. dump(child, depth+1)
	end
	return s .. "\n"
end

local function dumpChildren(instance: Instance?)
	if instance then
		print(dump(instance, 0))
	else
		print("<nil>")
	end
end

return dumpChildren