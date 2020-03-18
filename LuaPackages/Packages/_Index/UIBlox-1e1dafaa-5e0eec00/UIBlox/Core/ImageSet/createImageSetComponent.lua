local ImageSet = script.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

return function(innerComponent, resolutionScale)
	assert(resolutionScale > 0)

	return function(props)
		local fullProps = {}
		local imageSetProps
		local usesImageSet = false

		for key, value in pairs(props) do
			if key == "Image" and typeof(value) == "table" then
				usesImageSet = true
				imageSetProps = value
			else
				fullProps[key] = value
			end
		end

		if usesImageSet then
			for imageKey, imageValue in pairs(imageSetProps) do
				if not fullProps[imageKey] then
					fullProps[imageKey] = imageValue
				end
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
