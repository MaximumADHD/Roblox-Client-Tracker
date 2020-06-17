local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local PromptState = require(Root.Enums.PromptState)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local connectToStore = require(Root.connectToStore)

local NumberLocalizer = require(script.Parent.Parent.Connection.NumberLocalizer)
local AutoResizeList = require(script.Parent.AutoResizeList)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local function Price(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local showPrice = props.showPrice
		local price = props.price

		return showPrice and Roact.createElement(AutoResizeList, {
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

local function mapStateToProps(state)
	local promptState = state.promptState
	local canPurchase = promptState ~= PromptState.Error
	local isPlayerPremium = state.accountInfo.membershipType == 4
	local price = getPlayerPrice(state.productInfo, isPlayerPremium)
	local free = price == 0

	return {
		showPrice = canPurchase and not free,
		price = price,
	}
end

Price = connectToStore(
	mapStateToProps
)(Price)

return Price