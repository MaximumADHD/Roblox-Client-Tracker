-- Detects whether this engine has WrapLayer.RotateScaleDeformationMap and ScaleOnlyDeformationMap
-- (both added together). Reading a property the engine lacks throws, so a requirement on either
-- would fail PropertyRequirementsValid with PropertyNotFound on older engines.
return function(): boolean
	local wrapLayer = Instance.new("WrapLayer")
	local hasProperty = pcall(function()
		return (wrapLayer :: any).RotateScaleDeformationMap
	end)
	wrapLayer:Destroy()
	return hasProperty
end
