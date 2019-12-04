-- This file provides a convenient interface to query for images.
-- Some components within UIBlox expects a table of imageset data to format their image
-- correctly. We can use this file to quickly query the correct imageset data for those cases.
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)

local GetImageSetData = require(script.Parent.GetImageSetData)

local GuiService = game:GetService("GuiService")

local scale = GuiService:GetResolutionScale()
local sourceData = GetImageSetData(scale)

local Images = {}
for key, value in pairs(sourceData) do
	ArgCheck.isType(value, "table", "value")
	local imageProps = {}
	for imageKey, imageValue in pairs(value) do
		if imageKey == "ImageSet" then
			imageProps.Image = string.format("rbxasset://textures/ui/ImageSet/%s.png", imageValue)
		else
			imageProps[imageKey] = imageValue
		end
	end
	Images[key] = imageProps
end

-- Attach a metamethod to guard against typos
setmetatable(Images, {
	__index = function(_, key)
		error(("%q is not a valid member of Images"):format(tostring(key)), 2)
	end,
})

return Images