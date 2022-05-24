local Plugin = script.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local IconTile = require(Plugin.Core.Components.Categorization.IconTile)

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)

local Constants = require(Util.Constants)
local THUMBNAIL_SIZE = Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
local IMAGE = Urls.constructAssetThumbnailUrl(5657301130, THUMBNAIL_SIZE, THUMBNAIL_SIZE)

local function ToolboxWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, props)
end

return {
	summary = "A generic tile with an icon and gradient.",
	stories = {
		{
			name = "Clickable",
			summary = "Sends a key on click and has a pointer cursor.",
			story = Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.fromRGB(50, 168, 82),
					Image = IMAGE,
					Key = "Click",
					OnClick = function(key)
						print(key)
					end,
					Size = UDim2.new(0, 75, 0, 90),
					Title = "Category",
				}),
			}),
		},
		{
			name = "Multi-Lined text",
			summary = "Multiple lines of category text.",
			story = Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.fromRGB(50, 168, 82),
					Image = IMAGE,
					Size = UDim2.new(0, 75, 0, 90),
					Title = "Category 2 Lines",
				}),
			}),
		},
		{
			name = "Flexible width",
			summary = "Respects Size.X.Scale.",
			story = Roact.createElement(ToolboxWrapper, {}, {
				IconTile = Roact.createElement(IconTile, {
					BackgroundColor = Color3.fromRGB(50, 168, 82),
					Image = IMAGE,
					Size = UDim2.new(0.5, 0, 0, 90),
					Title = "Flexible",
				}),
			}),
		},
	},
}
