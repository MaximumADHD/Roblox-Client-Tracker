local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local FoundationImages = require(Packages.FoundationImages)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

local Images = FoundationImages.Images

local function ImageGridItem(props: {
	imageName: string,
	isVisible: boolean,
})
	local imageName = props.imageName
	local isVisible = props.isVisible

	return React.createElement(View, {
		tag = "size-3000-0 auto-y col align-x-center align-y-center gap-small bg-surface-100 radius-medium padding-medium",
		Visible = isVisible,
	}, {
		ImageContainer = React.createElement(Image, {
			tag = "size-2000-2000",
			Image = imageName,
			LayoutOrder = 1,
		}),

		Label = React.createElement(Text, {
			tag = "auto-xy size-full-0 content-default text-caption-large text-wrap",
			Text = imageName:match("([^/]+)$") or imageName, -- Extract just the filename
			LayoutOrder = 2,
		}),

		FullPath = React.createElement(Text, {
			tag = "auto-xy size-full-0 content-default text-caption-small text-wrap",
			Text = imageName,
			LayoutOrder = 3,
		}),
	})
end

local function capitalizeFirstLetter(str)
	return str:gsub("^%l", string.upper)
end

local function getImagesBySection()
	-- Group images by their top-level directory/section
	local sections = {}

	for imageName, imageDetails in pairs(Images) do
		-- Extract the first part of the path (before the first '/')
		local section = imageName:match("^([^/]+)") or "other"

		if not sections[section] then
			sections[section] = {}
		end

		table.insert(sections[section], {
			name = imageName,
			details = imageDetails,
		})
	end

	-- Sort images within each section
	for section, imageList in pairs(sections) do
		table.sort(imageList, function(a, b)
			return a.name < b.name
		end)
	end

	return sections
end

local function createStoryForSection(sectionName, imageList)
	return {
		name = capitalizeFirstLetter(sectionName),
		story = function(props)
			local controls = props.controls
			local keyword = controls.keyword

			-- Create grid items for this section
			local gridItems: { [string]: React.ReactNode } = {}
			for i, imageInfo in ipairs(imageList) do
				gridItems[imageInfo.name] = React.createElement(ImageGridItem, {
					imageName = imageInfo.name,
					isVisible = if #keyword > 0 then string.find(imageInfo.name, keyword) ~= nil else true,
				})
			end

			return React.createElement(View, {
				tag = "auto-y size-full-0 row wrap gap-xlarge",
			}, gridItems)
		end,
	}
end

-- Get all sections and create stories
local sections = getImagesBySection()
local stories = {}

-- Create a story for each section
for sectionName, imageList in pairs(sections) do
	table.insert(stories, createStoryForSection(sectionName, imageList))
end

-- Sort stories by name for consistent ordering
table.sort(stories, function(a, b)
	return a.name < b.name
end)

return {
	summary = "Foundation Images organized by section",
	stories = stories,
	controls = {
		keyword = "",
	},
}
