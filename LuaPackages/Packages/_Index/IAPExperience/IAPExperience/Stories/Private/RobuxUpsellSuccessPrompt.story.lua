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

local RobuxUpsellSuccessPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.RobuxUpsellSuccessPrompt)

local PurchaseSuccessPromptContainer = Roact.PureComponent:extend("PurchaseSuccessPromptContainer")

function PurchaseSuccessPromptContainer:init()
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

function PurchaseSuccessPromptContainer:render(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		PurchaseSuccessPrompt = Roact.createElement(RobuxUpsellSuccessPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			itemIcon = self.props.controls.icon and PREMIUM_ICON_LARGE or nil,
			itemName = "Premium Coins + Speed up Bonus",
			balance = 100,

			confirmControllerIcon = self.props.controls.showController and XBOX_A_ICON or nil,
			cancelControllerIcon = self.props.controls.showController and XBOX_B_ICON or nil,

			equipActivated = self.props.controls.canEquipAfter and function()
				warn("Equip")
			end or nil,
			doneActivated = function()
				warn("Back to game")
			end,
		}),
	})
end

return {
	controls = {
		canEquipAfter = true,
		showController = false,
		icon = true,
	},
	story = PurchaseSuccessPromptContainer,
}
