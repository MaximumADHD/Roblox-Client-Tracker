local ImageSet = script.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local scaleSliceToResolution = require(UIBlox.App.ImageSet.scaleSliceToResolution)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

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
				elseif imageKey == "ImageRectOffset" then
					fullProps[imageKey] = imageValue + fullProps[imageKey] * resolutionScale
				elseif imageKey == "ImageRectSize" then
					fullProps[imageKey] = fullProps[imageKey] * resolutionScale
				end
			end
		end

		if usesImageSet then
			fullProps = scaleSliceToResolution(fullProps, resolutionScale)
		end

		if UIBloxConfig.useAnimatedXboxCursors then
			fullProps[Roact.Children] = props[Roact.Children]
		end

		return Roact.createElement(innerComponent, fullProps)
	end
end
