local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local Immutable = require(Plugin.Core.Util.Immutable)

local function DropShadow(props)
	local newProps = Immutable.JoinDictionaries(props, {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = Images.DROP_SHADOW_IMAGE,
		ImageColor3 = Constants.DROP_SHADOW_COLOR,
		ImageTransparency = Constants.DROP_SHADOW_TRANSPARENCY,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Constants.DROP_SHADOW_SLICE_CENTER,
	})

	return Roact.createElement("ImageLabel", newProps)
end

return DropShadow
