local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)

return function(innerComponent, resolutionScale)
	assert(resolutionScale > 0)

	return function(props)
		local fullProps = {}
		local usesImageSet = false

		for key, value in pairs(props) do
			if key == "Image" and typeof(value) == "table" then
				usesImageSet = true
				for imageKey, imageValue in pairs(value) do
					fullProps[imageKey] = imageValue
				end
			else
				fullProps[key] = value
			end
		end

		if usesImageSet and fullProps.SliceCenter then
			local min = fullProps.SliceCenter.Min * resolutionScale
			local max = fullProps.SliceCenter.Max * resolutionScale
			fullProps.SliceCenter = Rect.new(min, max)
			fullProps.SliceScale = (fullProps.SliceScale or 1) / resolutionScale
		end

		return Roact.createElement(innerComponent, fullProps)
	end
end
