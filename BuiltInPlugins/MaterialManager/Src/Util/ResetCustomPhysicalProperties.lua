--!nocheck

-- This a separate file, because Luau analyze fails on this line even though this is the correct way of handling this scenario
return function(materialVariant: MaterialVariant)
	materialVariant.CustomPhysicalProperties = nil
end
