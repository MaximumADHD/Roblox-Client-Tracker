--[[
	Main frame containing Preview components

	Required Props:
		UDim2 Size: size of the frame
		table UserAddedAssets: the table of assets added by the user
		callback UpdateUserAddedAssets: function called when user added assets are changed

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number LayoutOrder: render order of component in layout
]]
local FFlagLayeredClothingEditorWithContext = game:GetFastFlag("LayeredClothingEditorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck

local PreviewTabsRibbon = require(Plugin.Src.Components.Preview.PreviewTabsRibbon)
local Grid = require(Plugin.Src.Components.Preview.Grid)
local SelectionControls = require(Plugin.Src.Components.Preview.SelectionControls)

local PreviewFrame = Roact.PureComponent:extend("PreviewFrame")
Typecheck.wrap(PreviewFrame, script)

function PreviewFrame:init()
	self.previewFrameRef = Roact.createRef()
end

function PreviewFrame:render()
	local props = self.props
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local theme = props.Stylizer
	local userAddedAssets = props.UserAddedAssets

	local orderIterator = LayoutOrderIterator.new()

	-- Slider in SelectionControls does not drag if it is below a scrolling frame. Workaround
	-- is to set ZIndex to something higher.
	local zIndex = 1
	if self.previewFrameRef.current then
		zIndex = self.previewFrameRef.current.Grid.ZIndex + 1
	end

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
		Size = size,
		LayoutOrder = layoutOrder,

		[Roact.Ref] = self.previewFrameRef,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, theme.MainPadding),

			[Roact.Change.AbsoluteContentSize] = function(rbx)
				if not self.previewFrameRef.current then
					return
				end
				local totalFixedHeight =
					self.previewFrameRef.current.PreviewTabsRibbon.AbsoluteSize.Y +
					self.previewFrameRef.current.SelectionControls.AbsoluteSize.Y
				self.previewFrameRef.current.Grid.Size = UDim2.new(1, 0, 1, -totalFixedHeight)
			end,
		}),
		PreviewTabsRibbon = Roact.createElement(PreviewTabsRibbon, {
			LayoutOrder = orderIterator:getNextOrder(),
		}),
		Grid = Roact.createElement(Grid, {
			layoutOrder = orderIterator:getNextOrder(),
			UpdateUserAddedAssets = props.UpdateUserAddedAssets,
			UserAddedAssets = userAddedAssets
		}),
		SelectionControls = Roact.createElement(SelectionControls, {
			Size = UDim2.new(1, -theme.MainPadding, 0, theme.SliderHeight),
			LayoutOrder = orderIterator:getNextOrder(),
			ZIndex = zIndex,
		}),
	})
end

if FFlagLayeredClothingEditorWithContext then
	PreviewFrame = withContext({
		Stylizer = ContextServices.Stylizer,
	})(PreviewFrame)
else
	ContextServices.mapToProps(PreviewFrame,{
		Stylizer = ContextServices.Stylizer,
	})
end


return PreviewFrame