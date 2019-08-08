--[[
	This component will show loading indicator when the asset is loading.
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local PreviewLoading = Roact.PureComponent:extend("PreviewLoading")

function PreviewLoading:render()
	return withTheme(function(theme)
		local props = self.props

		local position = props.position
		local size = props.size or UDim2.new(1, 0, 1, 0)
		local otherPreviewTheme = theme.assetPreview.otherPreview

		local layoutOrder = props.layoutOrder

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,

			BackgroundTransparency = 0,
			BackgroundColor3 = otherPreviewTheme.background,
			BorderSizePixel = 0,

			LayoutOrder = layoutOrder,
		},{
			LoadingIndicator = Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			})
		})
	end)
end

return PreviewLoading


