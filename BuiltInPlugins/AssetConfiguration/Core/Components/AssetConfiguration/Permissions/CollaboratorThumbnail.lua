--[[
	This component is used to display a thumbnail for subjects (e.g. users or groups)

	Necessary Properties:

	Optional Properties:
	UseMask = bool, default to false. The thumbnail will be clipped to a circle and be given a slightly dark background color	
	ImageLabel.props.* = ..., Any property for ImageLabel is supported
--]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local CollaboratorThumbnail = Roact.PureComponent:extend("CollaboratorThumbnail")

function CollaboratorThumbnail:init()
	self.state = {
		backgroundColor = nil,
	}

	-- If UseMask is enabled, we have a negative circle cutout whose color is the same as the
	-- background color to make it appear like we're clipping the thumbnail to a circle. We need
	-- to update our color whenever the parent's color changes (Note: this is not perfect. Requires
	-- BackgroundColor3 property to be set even if it's not used (e.g. invisible frame))
	local function colorChanged()
		local collaboratorThumbnail = self.ref.current

		if collaboratorThumbnail == nil then return end

		self:setState({backgroundColor = collaboratorThumbnail.Parent.BackgroundColor3})
	end
	
	self.parentChanged = function()
		local collaboratorThumbnail = self.ref.current

		if collaboratorThumbnail == nil then return end

		if self.colorChanged then self.colorChanged:Disconnect() end
		if collaboratorThumbnail.Parent then
			self.colorChanged = collaboratorThumbnail.Parent:GetPropertyChangedSignal("BackgroundColor3"):Connect(colorChanged)
			colorChanged()
		end
	end

	self.ref = Roact.createRef()
end

function CollaboratorThumbnail:didMount()
	-- This element is created in the widget it's used in, and then passed to a dropdown in that same
	-- widget. We can't get the dropdown's color when this is created because it's determined by the
	-- dropdown's state (e.g. is it hovered?). The only other option is to pass construction parameters
	-- to the dropdown, which is pretty hacky, so we used a ref instead
	local collaboratorThumbnail = self.ref.current
	self.parentChangedSignal = collaboratorThumbnail:GetPropertyChangedSignal("Parent"):Connect(function() self.parentChanged() end)
	self.parentChanged()
end

function CollaboratorThumbnail:willUnmount()
	self.parentChangedSignal:Disconnect()
	if self.colorChanged then
		self.colorChanged:Disconnect()
	end
end

function CollaboratorThumbnail:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function CollaboratorThumbnail:renderContent(theme)
	if FFlagToolboxRemoveWithThemes then
		theme = self.props.Stylizer
	end
	local useMask = self.props.UseMask or false
	local isLoadedThumbnail = self.props.IsLoadedThumbnail or false

	local imageProps = Cryo.Dictionary.join(self.props, {
		UseMask = Cryo.None,
		IsLoadedThumbnail = Cryo.None,
		Stylizer = FFlagToolboxRemoveWithThemes and Cryo.None or nil,
	})

	return Roact.createElement("ImageLabel", Cryo.Dictionary.join(imageProps, {
		[Roact.Ref] = self.ref,

		ImageColor3 = isLoadedThumbnail and Color3.new(1,1,1) or theme.assetConfig.packagePermissions.subjectThumbnail.defaultImageColor,
		ImageTransparency = 0,
		BackgroundColor3 = theme.assetConfig.packagePermissions.subjectThumbnail.backgroundColor,
		BackgroundTransparency = useMask and 0 or 1,
		BorderSizePixel = 0,
	}), {
		Mask = useMask and Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),

			Image = Images.AVATAR_MASK,
			ImageColor3 = self.state.backgroundColor,
		}),
	})
end

if FFlagToolboxRemoveWithThemes then
	CollaboratorThumbnail = withContext({
		Stylizer = ContextServices.Stylizer,
	})(CollaboratorThumbnail)
end

return CollaboratorThumbnail