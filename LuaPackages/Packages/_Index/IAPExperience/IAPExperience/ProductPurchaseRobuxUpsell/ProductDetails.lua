local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical
local FitTextLabel = RoactFitComponents.FitTextLabel

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Core.Style.withStyle

local ROBUX_ICON = Images["icons/common/robux"]

local ProductDetails = Roact.Component:extend(script.Name)

ProductDetails.validateProps = t.strictInterface({
	layoutOrder = t.number,
	itemIcon = t.table,
	itemName = t.string,
	itemRobuxCost = t.number,
})

function ProductDetails:init()
	self.contentRef = Roact.createRef()
	self.footerRef = Roact.createRef()
	self.state = {
		contentSize = Vector2.new(0, 0),
		footerSize = Vector2.new(0, 0),
	}

	self.changeContentSize = function(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize
			})
		end
	end

	self.changeFooterSize = function(rbx)
		if self.state.footerSize ~= rbx.AbsoluteSize then
			self:setState({
				footerSize = rbx.AbsoluteSize
			})
		end
	end
end

function ProductDetails:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		return Roact.createElement(FitFrameVertical, {
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
			width = UDim.new(1, 0),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			contentPadding = UDim.new(0, 6),

			[Roact.Ref] = self.contentRef,
			[Roact.Change.AbsoluteSize] = self.changeContentSize,
		}, {
			ItemIconFrame = Roact.createElement(FitFrameVertical, {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				width = UDim.new(0.45, 0),
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				margin = {
					top = 0,
					bottom = 0,
					left = 0,
					right = 20,
				},
			}, {
				ItemIcon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 5, 0, 5),
					Size = UDim2.new(0, 85, 0, 85),
					ScaleType = Enum.ScaleType.Stretch,
					Image = self.props.itemIcon,
					ImageTransparency = 0,
				}),
			}),
			ItemDetailsFrame = Roact.createElement(FitFrameVertical, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				width = UDim.new(0.55, 0),
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				contentPadding = UDim.new(0, 5),
			}, {
				ItemName = Roact.createElement(FitTextLabel, {
					LayoutOrder = 1,
					BackgroundTransparency = 1,

					width = FitTextLabel.Width.FitToText,

					Font = fonts.Header2.Font,
					Text = self.props.itemName,
					TextSize = fonts.BaseSize * fonts.Header2.RelativeSize,
					TextColor3 = theme.TextEmphasis.Color,
				}),
				ItemCostFrame = Roact.createElement(FitFrameVertical, {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					width = UDim.new(0.5, 0),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					contentPadding = UDim.new(0, 2),
				}, {
					RobuxIcon = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,

						Position = UDim2.new(0, 5, 0, 5),
						Size = UDim2.new(0, 24, 0, 24),
						ScaleType = Enum.ScaleType.Stretch,
						Image = ROBUX_ICON,
						ImageColor3 = theme.IconEmphasis.Color,
						ImageTransparency = theme.IconEmphasis.Transparency,
					}),
					ItemCost = Roact.createElement(FitTextLabel, {
						LayoutOrder = 2,
						BackgroundTransparency = 1,

						TextWrapped = true,
						width = FitTextLabel.Width.FitToText,
						maximumWidth = self.state.contentSize.X,

						Font = fonts.Header2.Font,
						Text = tostring(self.props.itemRobuxCost),
						TextSize = fonts.BaseSize * fonts.Header2.RelativeSize,
						TextColor3 = theme.TextEmphasis.Color,
					})
				})
			}),
		})
	end)
end

return ProductDetails
