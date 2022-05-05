local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local CategoryDropDown = require(Plugin.Core.Components.CategoryDropDown.CategoryDropDown)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local categories = {
	"rock",
	"pop",
	"scores-orchestral",
	"children",
	"ethnic-folk",
	"kitsch-retro",
	"electronic",
	"latin",
	"classical",
	"jazz",
	"corporate",
	"blues",
	"atmosphere",
	"easy-listening",
	"religious",
	"world-beat",
	"hip-hop",
	"folk-contemporary",
	"dance-traditional",
	"funk-soul-r-b",
	"ethnic-pop",
	"country",
	"marches-military",
	"electronica",
}

local noop = function(selected: string)
	print(selected)
end
return {
	name = "Category drop down",
	story = Roact.createElement(ToolboxStoryWrapper, {}, {
		CategoryDropDown = Roact.createElement(CategoryDropDown, { OnCategorySelect = noop, Categories = categories }),
	}),
}
