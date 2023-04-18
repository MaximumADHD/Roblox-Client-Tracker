local PublicRoot = script.Parent
local StoryRoot = PublicRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local IAPExperience = require(Packages.IAPExperience)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local ProductPurchase = IAPExperience.ProductPurchase

local ProductPurchaseContainer = Roact.PureComponent:extend("ProductPurchaseContainer")

function ProductPurchaseContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end
end

function ProductPurchaseContainer:render(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		ProductPurchase = Roact.createElement(ProductPurchase, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			itemIcon = PREMIUM_ICON_LARGE,
			itemName = "Premium Coins + Speed up Bonus",
			itemRobuxCost = 50,
			currentBalance = 100,

			isLoading = self.props.controls.isLoading,
			isDisabled = self.props.controls.isDisabled,
			testPurchase = self.props.controls.isTestPurchase,
			isGamePass = self.props.controls.isGamePass,
			isDelayedInput = self.props.controls.isDelayedInput,
			enableInputDelayed = self.props.controls.enableInputDelayed,

			buyItemControllerIcon = XBOX_A_ICON,
			cancelControllerIcon = XBOX_B_ICON,

			buyItemActivated = function()
				warn("Buy Item!")
			end,
			cancelPurchaseActivated = function()
				warn("Cancel Purchase!")
			end,

			isLuobu = self.state.isLuobu,
		}),
	})
end

return {
	controls = {
		isDisabled = false,
		isLoading = false,
		isTestPurchase = false,
		isDelayedInput = false,
		enableInputDelayed = false,
		isLuobu = false,
		isGamePass = false,
	},
	story = ProductPurchaseContainer,
}
