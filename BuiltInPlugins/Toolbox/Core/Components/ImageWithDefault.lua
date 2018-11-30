local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)

local Immutable = require(Plugin.Core.Util.Immutable)

local ContentProvider = game:GetService("ContentProvider")

local loadedImages = {}
local decal = Instance.new("Decal")

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")

local ImageWithDefault = Roact.PureComponent:extend("ImageWithDefault")

function ImageWithDefault:init()
	self.imageRef = Roact.createRef()
end

function ImageWithDefault:_loadAndSetImage()
	local image = self.props.Image
	local defaultImage = self.props.defaultImage

	if not image or image == ""
		or not self.imageRef or not self.imageRef.current
		or self.imageRef.current.Image == image then
		return
	end

	if loadedImages[image] then
		self.imageRef.current.Image = image
	else
		self.imageRef.current.Image = defaultImage

		spawn(function()
			decal.Texture = image
			ContentProvider:PreloadAsync({decal})

			loadedImages[image] = true
			if self.imageRef and self.imageRef.current and self.props.Image == image then
				self.imageRef.current.Image = image
			end
		end)
	end
end

function ImageWithDefault:didMount()
	self:_loadAndSetImage()
end

function ImageWithDefault:didUpdate(prevProps)
	if self.props.Image ~= prevProps.Image
		or self.props.defaultImage ~= prevProps.defaultImage then
		self:_loadAndSetImage()
	end
end

function ImageWithDefault:render()
	local newProps
	if FFlagStudioLuaWidgetToolboxV2 then
		newProps = Cryo.Dictionary.join(self.props, {
			[Roact.Ref] = self.imageRef,
			Image = Cryo.None,
			defaultImage = Cryo.None,
		})
	else
		newProps = Immutable.Set(self.props, Roact.Ref, self.imageRef)
		newProps = Immutable.RemoveFromDictionary(newProps, "Image", "defaultImage")
	end
	return Roact.createElement("ImageLabel", newProps)
end

function ImageWithDefault.mockImage(image)
	loadedImages[image] = true
end

return ImageWithDefault
