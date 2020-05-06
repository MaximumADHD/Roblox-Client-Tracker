--[[
	Used to display a thumbnail for subjects (e.g. users or groups)

	Props:
		bool [UseMask=false] - The thumbnail will be clipped to a circle and be given a slightly dark background color
		ImageLabel:... - Any property for ImageLabel is supported
--]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local withTheme = require(Plugin.Src.Consumers.withTheme)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local CollaboratorThumbnail = Roact.PureComponent:extend("CollaboratorThumbnail")

function CollaboratorThumbnail:init()
	self.ref = Roact.createRef()
end

function CollaboratorThumbnail:didMount()
	-- This element is created in the widget it's used in, and then passed to a dropdown in that same
	-- widget. We can't get the dropdown's color when this is created because it's determined by the
	-- dropdown's state (e.g. is it hovered?). The only other option is to pass construction parameters
	-- to the dropdown, which is pretty hacky, so we used a ref instead
	local collaboratorThumbnail = self.ref.current

	-- If UseMask is enabled, we have a negative circle cutout whose color is the same as the
	-- background color to make it appear like we're clipping the thumbnail to a circle. We need
	-- to update our color whenever the parent's color changes (Note: this is not perfect. Requires
	-- BackgroundColor3 property to be set even if it's not used (e.g. invisible frame))
	local function colorChanged()
		self:setState({backgroundColor = collaboratorThumbnail.Parent.BackgroundColor3})
	end
	local function parentChanged()
		if self.colorChanged then self.colorChanged:Disconnect() end
		if collaboratorThumbnail.Parent then
			self.colorChanged = collaboratorThumbnail.Parent:GetPropertyChangedSignal("BackgroundColor3"):Connect(colorChanged)
			colorChanged()
		end
	end

	self.parentChanged = collaboratorThumbnail:GetPropertyChangedSignal("Parent"):Connect(parentChanged)
	parentChanged()
end

function CollaboratorThumbnail:willUnmount()
	self.parentChanged:Disconnect()
	if self.colorChanged then
		self.colorChanged:Disconnect()
	end
end

function CollaboratorThumbnail:DEPRECATED_render()
	local useMask = self.props.UseMask or false

	local imageProps = Cryo.Dictionary.join(self.props, {
		UseMask = Cryo.None,
	})

	return withTheme(function(theme)
		return Roact.createElement("ImageLabel", Cryo.Dictionary.join(imageProps, {
			[Roact.Ref] = self.ref,

			BackgroundColor3 = theme.subjectThumbnail.background,
			BackgroundTransparency = useMask and 0 or 1,
			BorderSizePixel = 0,
		}), {
			Mask = useMask and Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Image = "rbxasset://textures/StudioSharedUI/avatarMask.png",
				ImageColor3 = self.state.backgroundColor,
			}),
		})
	end)
end

function CollaboratorThumbnail:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")

	local layoutOrder = props.LayoutOrder
	local useMask = props.UseMask or false
	local image = props.Image
	local imageTransparency = props.ImageTransparency
	local imageSize = props.Size

	return Roact.createElement("ImageLabel", {
		[Roact.Ref] = self.ref,

		Image = image,
		ImageTransparency = imageTransparency,
		Size = imageSize,

		BackgroundColor3 = theme.subjectThumbnail.background,
		BackgroundTransparency = useMask and 0 or 1,
		BorderSizePixel = 0,

		LayoutOrder = layoutOrder,
	}, {
		Mask = useMask and Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),

			Image = "rbxasset://textures/StudioSharedUI/avatarMask.png",
			ImageColor3 = self.state.backgroundColor,
		}),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(CollaboratorThumbnail, {
		Theme = ContextServices.Theme,
	})
end

return CollaboratorThumbnail