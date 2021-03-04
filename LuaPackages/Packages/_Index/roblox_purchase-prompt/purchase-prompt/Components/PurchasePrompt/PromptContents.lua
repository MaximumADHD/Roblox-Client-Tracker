local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local AutoResizeList = require(script.Parent.AutoResizeList)
local ItemPreviewImage = require(script.Parent.ItemPreviewImage)
local ProductDescription = require(script.Parent.ProductDescription)
local PromptButtons = require(script.Parent.PromptButtons)
local AdditionalDetailLabel = require(script.Parent.AdditionalDetailLabel)

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local function PromptContents(props)
	return withLayoutValues(function(values)
		local onClose = props.onClose

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			PromptBody = Roact.createElement(AutoResizeList, {
				layoutOrder = 1,
				backgroundImage = values.Image.PromptBackground.Path,
				sliceCenter = values.Image.PromptBackground.SliceCenter,
				fillDirection = Enum.FillDirection.Vertical,
			}, {
				ProductInfo = Roact.createElement(AutoResizeList, {
					layoutOrder = 1,
					fillDirection = Enum.FillDirection.Horizontal,
				}, {
					ItemPreviewImage = Roact.createElement(ItemPreviewImage, {
						layoutOrder = 1,
					}),
					ProductDescription = Roact.createElement(ProductDescription, {
						layoutOrder = 2,
					})
				}),
				AdditionalDetails = Roact.createElement(AdditionalDetailLabel, {
					layoutOrder = 2,
				}),
			}),
			PromptButtons = Roact.createElement(PromptButtons, {
				layoutOrder = 2,
				onClose = onClose,
			}),
		})
	end)
end

return PromptContents
