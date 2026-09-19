--[[
	Renders an instance or thumbnail.

	Required Props:
		any Image: The Image to render. This can be an Instance or an asset URL string.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: LayoutOrder of the component.
		UDim2 Position: The position of this component.
		UDim2 Size: The size of this component.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Container = require(Framework.UI.Components.Container)
local Image = require(Framework.UI.Components.Image)
local Box = require(Framework.UI.Components.Box)

local Typecheck = require(Framework.Util.Typecheck)

local AssetRenderImage = Roact.PureComponent:extend("AssetRenderImage")
Typecheck.wrap(AssetRenderImage, script)

local function getImage(image)
	if typeof(image) ~= "Instance" then
		return image
	end

	if image:IsA("Decal") or image:IsA("Texture") then
		return image.Texture
	elseif image:IsA("Sky") then
		return image.SkyboxFt
	else
		error("Unsupported Instance type")
	end
end

local function getImageScaleType(image)
	if typeof(image) ~= "Instance" then
		return Enum.ScaleType.Fit
	end

	if image:IsA("Sky") then
		return Enum.ScaleType.Crop
	else
		return Enum.ScaleType.Fit
	end
end

function AssetRenderImage:render()
	local props = self.props
	local position = props.Position
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local image = props.Image

	return Roact.createElement(Container, {
		Position = position,
		Size = size,
		Background = Box,
	}, {
		Image = Roact.createElement(Image, {
			Style = {
				ScaleType = getImageScaleType(image),
				Image = getImage(image),
			},
		}),
	})
end

AssetRenderImage = withContext({
	Stylizer = ContextServices.Stylizer,
})(AssetRenderImage)

return AssetRenderImage
