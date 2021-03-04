local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local NumberLocalizer = require(script.Parent.Parent.Connection.NumberLocalizer)
local AutoResizeList = require(script.Parent.AutoResizeList)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

return function(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local price = props.price

		return Roact.createElement(AutoResizeList, {
			layoutOrder = layoutOrder,
			horizontalAlignment = Enum.HorizontalAlignment.Left,
			verticalAlignment = Enum.VerticalAlignment.Center,
			fillDirection = Enum.FillDirection.Horizontal,
		}, {
			RobuxIconContainer = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Size = values.Size.RobuxIconContainerFrame,
				LayoutOrder = 1,
			}, {
				RobuxIcon = Roact.createElement("ImageLabel", {
					Size = values.Size.RobuxIcon,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 0, 0.5, 0),
					Image = values.Image.RobuxIcon.Path,
				}),
			}),
			PriceTextLabel = Roact.createElement(NumberLocalizer, {
				number = price,
				render = function(localizedNumber)
					return Roact.createElement("TextLabel", {
						Text = localizedNumber,
						LayoutOrder = 2,
						Size = values.Size.PriceTextLabel,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextColor3 = values.TextColor.PriceLabel,
						Font = Enum.Font.SourceSansBold,
						TextSize = values.TextSize.Default,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextScaled = true,
						TextWrapped = true,
					}, {
						TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = values.TextSize.Default,
						})
					})
				end,
			})
		})
	end)
end
