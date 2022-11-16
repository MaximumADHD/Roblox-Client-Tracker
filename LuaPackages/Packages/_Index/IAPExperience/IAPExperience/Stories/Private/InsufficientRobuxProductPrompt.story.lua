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

local InsufficientRobuxProductPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.InsufficientRobuxProductPrompt)

local InsufficientRobuxProductPromptContainer = Roact.PureComponent:extend("InsufficientRobuxProductPromptContainer")

function InsufficientRobuxProductPromptContainer:init()
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

function InsufficientRobuxProductPromptContainer:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		InsufficientRobuxProductPrompt = Roact.createElement(InsufficientRobuxProductPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			itemIcon = self.props.controls.icon and PREMIUM_ICON_LARGE or nil,
			itemName = "Premium Coins + Speed up Bonus",
			itemRobuxCost = 9901,
			balanceAmount = 100,

			acceptControllerIcon = XBOX_A_ICON,
			cancelControllerIcon = XBOX_B_ICON,

			robuxStoreActivated = function() warn("Robux Store!") end,
			cancelPurchaseActivated = function() warn("Cancel Purchase!") end,
		})
	})
end

return {
	controls = {
		icon = true,
	},
	story = InsufficientRobuxProductPromptContainer
}
