local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local PromptState = require(script.Parent.Parent.Parent.PromptState)

local function ItemPreviewImage(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local promptState = props.promptState
		local productImageUrl = props.productImageUrl

		if promptState == PromptState.Error then
			productImageUrl = values.Image.ErrorIcon.Path
		end

		return Roact.createElement("Frame", {
			Size = values.Size.ItemPreviewContainerFrame,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
		}, {
			ItemPreviewImageContainer = Roact.createElement("Frame", {
				Size = values.Size.ItemPreviewWhiteFrame,
				BackgroundTransparency = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = Color3.new(1, 1, 1),
			}, {
				ItemImage = Roact.createElement("ImageLabel", {
					Size = values.Size.ItemPreview,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Image = productImageUrl,
				})
			})
		})
	end)
end

local function mapStateToProps(state)
	return {
		promptState = state.promptState,
		productImageUrl = state.productInfo.imageUrl,
	}
end

ItemPreviewImage = connectToStore(
	mapStateToProps
)(ItemPreviewImage)

return ItemPreviewImage