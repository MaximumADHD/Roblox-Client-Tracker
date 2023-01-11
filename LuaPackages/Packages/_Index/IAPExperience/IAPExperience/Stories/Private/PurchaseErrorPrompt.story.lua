local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]

local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local PurchaseErrorType = require(IAPExperienceRoot.Generic.PurchaseErrorType)

local PurchaseErrorPromptContainer = Roact.PureComponent:extend("PurchaseErrorPromptContainer")

function PurchaseErrorPromptContainer:init()
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

function PurchaseErrorPromptContainer:render(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		PurchaseErrorPrompt = Roact.createElement(PurchaseErrorPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			errorType = self.props.controls.errorType,

			doneControllerIcon = self.props.controls.showController and XBOX_A_ICON or nil,

			doneActivated = function() print("OK") end,
		})
	})
end

return {
	controls = {
		errorType = {
			PurchaseErrorType.Unknown,
			PurchaseErrorType.AlreadyOwn,
			PurchaseErrorType.FailedGrant,
			PurchaseErrorType.FailedGrantUnknown,
			PurchaseErrorType.Limited,
			PurchaseErrorType.NotEnoughRobux,
			PurchaseErrorType.NotForSale,
			PurchaseErrorType.NotForSaleExperience,
			PurchaseErrorType.PremiumOnly,
			PurchaseErrorType.ThirdPartyDisabled,
			PurchaseErrorType.Under13,
			PurchaseErrorType.PremiumPlatformUnavailable,
			PurchaseErrorType.AlreadyPremium,
			PurchaseErrorType.PurchaseLimit,
			PurchaseErrorType.ParentalLimit,
		},
		showController = true,
	},
	story = PurchaseErrorPromptContainer
}
