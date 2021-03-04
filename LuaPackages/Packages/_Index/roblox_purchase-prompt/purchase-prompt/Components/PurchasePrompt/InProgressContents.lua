local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local TextLocalizer = require(script.Parent.Parent.Connection.TextLocalizer)

local AutoSizedTextLabel = require(script.Parent.AutoSizedTextLabel)
local PurchasingAnimation = require(script.Parent.PurchasingAnimation)

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local function InProgressContents(props)
	return withLayoutValues(function(values)
		return Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),

			ScaleType = Enum.ScaleType.Slice,
			Image = values.Image.InProgressBackground.Path,
			SliceCenter = values.Image.InProgressBackground.SliceCenter,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 20)
			}),
			PurchasingText = Roact.createElement(TextLocalizer, {
				key = "CoreScripts.PurchasePrompt.Purchasing",
				render = function(localizedText)
					return Roact.createElement(AutoSizedTextLabel, {
						width = values.Size.Dialog.X.Offset,
						Text = localizedText,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextColor3 = Color3.new(1, 1, 1),
						Font = Enum.Font.SourceSans,
						TextSize = values.TextSize.Purchasing,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						TextScaled = true,
						TextWrapped = true,
						LayoutOrder = 1,
					}, {
						TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = values.TextSize.Purchasing,
						}),
					})
				end,
			}),
			PurchasingAnimation = Roact.createElement(PurchasingAnimation, {
				layoutOrder = 2,
			}),
		})
	end)
end

return InProgressContents