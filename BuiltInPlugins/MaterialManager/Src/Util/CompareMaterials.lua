local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(materialLeft: _Types.Material?, materialRight: _Types.Material?)
	if not materialLeft and not materialRight then
		return true
	elseif not materialLeft or not materialRight then
		return false
	elseif materialLeft.MaterialVariant and materialRight.MaterialVariant then
		return materialLeft.MaterialVariant == materialRight.MaterialVariant
	elseif (materialLeft.MaterialVariant and not materialRight.MaterialVariant) or (not materialLeft.MaterialVariant and materialRight.MaterialVariant) then
		return false
	else
		return materialLeft.Material == materialRight.Material
	end
end
