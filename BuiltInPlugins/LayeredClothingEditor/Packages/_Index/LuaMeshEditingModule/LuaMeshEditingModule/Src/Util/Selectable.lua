local Selectable = {}
Selectable.__index = Selectable

function Selectable.new(meshName, index)
	local self = setmetatable({
		MeshName = meshName,
		Index = index,
		__eq = function(s1, s2)
			return s1.MeshName == s2.MeshName and
				s1.Index == s2.Index
		end
	}, Selectable)

	return self
end

return Selectable