local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]

local PremiumUpsellPrompt = require(IAPExperienceRoot.PremiumUpsell.PremiumUpsellPrompt)

local PremiumUpsellPromptContainer = Roact.PureComponent:extend("PremiumUpsellPromptContainer")

function PremiumUpsellPromptContainer:init()
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

function PremiumUpsellPromptContainer:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(
			self.props.controls.smallHorizontal and UDim.new(0, 420) or UDim.new(1, 0),
			self.props.controls.smallVertical and UDim.new(0, 419) or UDim.new(1, 0)
		),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		PremiumUpsellPrompt = Roact.createElement(PremiumUpsellPrompt, {
			screenSize = self.state.screenSize,

			isCatalog = self.props.controls.isCatalog,

			currencySymbol = "$",
			robuxPrice = 4.99,
			robuxAmount = 450,

			acceptControllerIcon = self.props.controls.controller and XBOX_A_ICON or nil,

			purchasePremiumActivated = function()
				warn("Subscribe!")
			end,
			cancelPurchaseActivated = function()
				warn("Cancel")
			end,
		}),
	})
end

return {
	controls = {
		isCatalog = false,
		smallHorizontal = false,
		smallVertical = false,
		controller = false,
	},
	story = PremiumUpsellPromptContainer,
}
