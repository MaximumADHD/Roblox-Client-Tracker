local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local RobuxUpsellPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.RobuxUpsellPrompt)

local RobuxUpsellPromptContainer = Roact.PureComponent:extend("RobuxUpsellPromptContainer")

function RobuxUpsellPromptContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize
			})
		end
	end
end

function RobuxUpsellPromptContainer:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		RobuxUpsellPrompt = Roact.createElement(RobuxUpsellPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			isLoading = self.props.controls.isLoading,
			isDisabled = self.props.controls.isDisabled,
			isDelayedInput = self.props.controls.isDelayedInput,
			enableInputDelayed = self.props.controls.enableInputDelayed,

			itemIcon = self.props.controls.icon and PREMIUM_ICON_LARGE or nil,
			itemName = "Premium Coins + Speed up Bonus",
			itemRobuxCost = 9901,
			robuxPurchaseAmount = 10000,
			balanceAmount = 100,

			buyItemControllerIcon = XBOX_A_ICON,
			cancelControllerIcon = XBOX_B_ICON,

			buyItemActivated = function() warn("Buy Item!") end,
			cancelPurchaseActivated = function() warn("Cancel Purchase!") end,
			termsOfUseActivated = self.props.controls.tosLink
				and function() warn("Terms of Use Clicked!") end
				or nil,
		})
	})
end

return {
	controls = {
		isDisabled = false,
		isLoading = false,
		isDelayedInput = false,
		enableInputDelayed = false,
		tosLink = true,
		icon = true,
	},
	story = RobuxUpsellPromptContainer
}
