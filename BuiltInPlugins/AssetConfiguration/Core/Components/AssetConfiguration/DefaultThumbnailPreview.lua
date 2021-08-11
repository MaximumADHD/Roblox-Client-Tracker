--[[
	DefaultThumbnailPreview
	Finds "instances" from the store provider and displays them in a ViewportFrame with a title below.

	Necessary Props:
		UDim2 Size - size of the preview
		UDim2 Position - position of the preview
		boolean showTitle - defaults to true if nil
		number titleHeight - height of title text (defaults to 24)
		number titlePadding - distance from title text to preview (defaults to 12)

	Optional Props:
		string title - the text of the title below the ViewportFrame, defaults to first instance name
		int LayoutOrder - will be used by the layouter to change the position of the components (defaults to 1 if not passed in)

]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Components = Plugin.Core.Components
local RoundFrame = require(Components.RoundFrame)

local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)

local DefaultThumbnailPreview = Roact.PureComponent:extend("DefaultThumbnailPreview")


function DefaultThumbnailPreview:getName()
	if self.props.instances and #self.props.instances > 0 then
		return self.props.instances[1].Name
	end
	return ""
end

function DefaultThumbnailPreview:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function DefaultThumbnailPreview:renderContent(theme)
	local props = self.props
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local title = props.title or self:getName()
	local showTitle = true
	if nil ~= props.ShowTitle then
		showTitle = props.showTitle
	end
	local position = props.Position or UDim2.new(1, 0, 1, 0)
	local titleHeight = props.titleHeight or PREVIEW_TITLE_HEIGHT
	local titlePadding = props.titlePadding or PREVIEW_TITLE_PADDING
	local layoutOrder = props.LayoutOrder or 1

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = props.Size,
		Position = position,

		LayoutOrder = layoutOrder
	}, {
		PreviewFrame = Roact.createElement(RoundFrame, {
			BackgroundColor3 = theme.thumbnailPreview.background,
			BorderColor3 = theme.thumbnailPreview.border,
			Size = showTitle and UDim2.new(1, 0, 1, -(titleHeight + titlePadding)) or UDim2.new(1, 0, 1, 0),
		}, {
			Thumbnail = Roact.createElement(ImageWithDefault, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/StudioToolbox/Animation.png",
				defaultImage = "",
			}),
		}),
		Title = showTitle and Roact.createElement("TextLabel", {
			Text = title,
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextColor3 = theme.thumbnailPreview.text,
			Position = UDim2.new(0, 0, 1, -titleHeight),
			Size = UDim2.new(1, 0, 0, titleHeight),
			BackgroundTransparency = 1,
		})
	})
end

local function mapStateToProps(state, props)
	state = state or {}
	return {
		instances = state.instances,
	}
end

if FFlagToolboxRemoveWithThemes then
	DefaultThumbnailPreview = withContext({
		Stylizer = ContextServices.Stylizer,
	})(DefaultThumbnailPreview)
end

return RoactRodux.connect(mapStateToProps)(DefaultThumbnailPreview)
