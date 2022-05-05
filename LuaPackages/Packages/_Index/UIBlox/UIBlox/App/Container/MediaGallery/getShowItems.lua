local MediaGallery = script.Parent
local Container = MediaGallery.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)

local function getShowItems(props)
	local videoItems = {}
	local imageItems = {}

	for index, item in ipairs(props.items) do
		if item.isVideo then
			table.insert(
				videoItems,
				Cryo.Dictionary.join(item, {
					originalIndex = index,
				})
			)
		else
			table.insert(
				imageItems,
				Cryo.Dictionary.join(item, {
					originalIndex = index,
				})
			)
		end
	end

	local newItems = Cryo.List.join(videoItems, imageItems)

	-- in preview mode it need to be filled up with placeholder
	local numberOfThumbnails = props.numberOfThumbnails
	if numberOfThumbnails then
		for i = #newItems + 1, numberOfThumbnails do
			newItems[i] = {}
		end
	end

	return newItems, #videoItems, #imageItems
end

return getShowItems
