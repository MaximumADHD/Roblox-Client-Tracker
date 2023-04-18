local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local U13ConfirmPrompt = require(IAPExperienceRoot.Generic.U13ConfirmPrompt)
local U13ConfirmType = require(IAPExperienceRoot.Generic.U13ConfirmType)

local U13ConfirmPromptContainer = Roact.PureComponent:extend("U13ConfirmPromptContainer")

function U13ConfirmPromptContainer:init()
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

function U13ConfirmPromptContainer:render(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		U13ConfirmPrompt = Roact.createElement(U13ConfirmPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			modalType = self.props.controls.u13Confirm,

			doneControllerIcon = self.props.controls.showController and XBOX_A_ICON or nil,
			cancelControllerIcon = self.props.controls.showController and XBOX_B_ICON or nil,

			doneActivated = function()
				print("OK")
			end,
			cancelActivated = function()
				print("Cancel")
			end,
		}),
	})
end

return {
	controls = {
		u13Confirm = {
			U13ConfirmType.U13PaymentModal,
			U13ConfirmType.U13MonthlyThreshold1Modal,
			U13ConfirmType.U13MonthlyThreshold2Modal,
			U13ConfirmType.ParentalConsentWarningPaymentModal13To17,
		},
		showController = true,
	},
	story = U13ConfirmPromptContainer,
}
