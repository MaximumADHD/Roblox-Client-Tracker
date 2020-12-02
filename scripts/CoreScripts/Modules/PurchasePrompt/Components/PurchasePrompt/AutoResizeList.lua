local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Cryo = PurchasePromptDeps.Cryo

local AutoResizeList = Roact.Component:extend("AutoResizeList")

function AutoResizeList:init()
	self.containerRef = Roact.createRef()
	self.listRef = Roact.createRef()

	self.contentSizeCallback = function()
		if self.listRef.current and self.containerRef.current then
			self:resizeContainer()
		end
	end
end

function AutoResizeList:didMount()
	self:resizeContainer()
end

function AutoResizeList:resizeContainer()
	self.containerRef.current.Size = UDim2.new(
		0, self.listRef.current.AbsoluteContentSize.X,
		0, self.listRef.current.AbsoluteContentSize.Y)
end

function AutoResizeList:render()
	local layoutOrder = self.props.layoutOrder
	local position = self.props.position
	local anchorPoint = self.props.anchorPoint
	local backgroundImage = self.props.backgroundImage
	local sliceCenter = self.props.sliceCenter

	local horizontalAlignment = self.props.horizontalAlignment
	local verticalAlignment = self.props.verticalAlignment
	local fillDirection = self.props.fillDirection
	local listPadding = self.props.listPadding

	local children = Cryo.Dictionary.join(self.props[Roact.Children] or {}, {
		["$ListLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = horizontalAlignment,
			VerticalAlignment = verticalAlignment,
			FillDirection = fillDirection,
			Padding = listPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Ref] = self.listRef,
			[Roact.Change.AbsoluteContentSize] = self.contentSizeCallback,
		})
	})

	if backgroundImage == nil then
		return Roact.createElement("Frame", {
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = position,
			AnchorPoint = anchorPoint,

			[Roact.Ref] = self.containerRef,
		}, children)
	else
		local scaleType = (sliceCenter ~= nil) and Enum.ScaleType.Slice or Enum.ScaleType.Stretch
		return Roact.createElement("ImageLabel", {
			Image = backgroundImage,
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScaleType = scaleType,
			SliceCenter = sliceCenter,
			Position = position,
			AnchorPoint = anchorPoint,

			[Roact.Ref] = self.containerRef,
		}, children)
	end
end

return AutoResizeList
