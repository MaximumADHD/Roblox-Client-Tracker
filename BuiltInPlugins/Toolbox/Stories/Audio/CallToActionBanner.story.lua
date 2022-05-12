local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local CallToActionBanner = require(Plugin.Core.Components.CallToActionBanner.CallToActionBanner)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local Images = require(Plugin.Core.Util.Images)

local noop = function()
	print("click")
end

return {
	name = "Banner",
	story = Roact.createElement(ToolboxStoryWrapper, {}, {
		CallToActionBanner = CallToActionBanner.Generator({
			Image = Images.MONSTER_CAT_BANNER,
			Text = "Find tracks from Mostercat",
			OnClick = noop,
		}),
	}),
}
