--!nonstrict
local ImageSet = script.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
local Foundation = require(Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local useTextSizeOffset = Foundation.Hooks.useTextSizeOffset
local scaleSliceToResolution = require(UIBlox.App.ImageSet.scaleSliceToResolution)
local ImagesInverse = require(UIBlox.App.ImageSet.ImagesInverse)
local getBuilderIconElement = require(ImageSet.getBuilderIconElement)

return function(innerComponent, resolutionScale)
	assert(
		resolutionScale > 0,
		"resolutionScale for ImageSet must be greater than 0! got " .. tostring(resolutionScale)
	)

	return Roact.forwardRef(function(props, ref)
		local fullProps = {
			[Roact.Ref] = ref,
			[Roact.Children] = props[Roact.Children],
		}
		local imageSetProps
		local deprecatedImageName
		local usesImageSet = false
		local usesDeprecatedIconAsset = false

		for key, value in pairs(props) do
			if key == "Image" and typeof(value) == "table" then
				if migrationLookup[value.Image] then
					usesDeprecatedIconAsset = true
					deprecatedImageName = value.Image
				else
					usesImageSet = true
					imageSetProps = value
				end
			else
				fullProps[key] = value
			end
		end
		local tokens = useTokens()
		local textSizeOffset = useTextSizeOffset()
		if usesImageSet or usesDeprecatedIconAsset then
			local imageName = if usesDeprecatedIconAsset then deprecatedImageName else ImagesInverse[imageSetProps]
			if imageName and migrationLookup[imageName] then
				if not tokens.Stroke then
					error(
						`No StyleProvider in tree for migrated icon ImageSetComponent.\n UIBlox Icon: {imageName}, BuilderIcon: {migrationLookup[imageName]}`
					)
				end
				local scaleValue = tokens.Stroke.Standard -- 1pt scaled
				return getBuilderIconElement(
					fullProps,
					innerComponent,
					migrationLookup[imageName],
					imageName,
					tokens,
					textSizeOffset,
					scaleValue
				)
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

		return Roact.createElement(innerComponent, fullProps)
	end)
end
