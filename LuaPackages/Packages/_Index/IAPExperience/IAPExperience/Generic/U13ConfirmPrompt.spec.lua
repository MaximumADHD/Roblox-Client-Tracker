local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local U13ConfirmType = require(GenericRoot.U13ConfirmType)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local U13ConfirmPrompt = require(GenericRoot.U13ConfirmPrompt)

local function testU13ConfirmPrompt(modalType: any)
	local element = mockStyleAndLocalizationComponent({
		Overlay = Roact.createElement(U13ConfirmPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = Vector2.new(100, 100),

			modalType = modalType,

			doneControllerIcon = XBOX_A_ICON,
			cancelControllerIcon = XBOX_B_ICON,

			doneActivated = function() end,
			cancelActivated = function() end,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end

return function()
	describe("lifecycle", function()
		it("should mount and unmount without issue (U13PaymentModal)", function()
			testU13ConfirmPrompt(U13ConfirmType.U13PaymentModal)
		end)
		it("should mount and unmount without issue (U13MonthlyThreshold1Modal)", function()
			testU13ConfirmPrompt(U13ConfirmType.U13MonthlyThreshold1Modal)
		end)
		it("should mount and unmount without issue (U13MonthlyThreshold2Modal)", function()
			testU13ConfirmPrompt(U13ConfirmType.U13MonthlyThreshold2Modal)
		end)
		it("should mount and unmount without issue (ParentalConsentWarningPaymentModal13To17)", function()
			testU13ConfirmPrompt(U13ConfirmType.ParentalConsentWarningPaymentModal13To17)
		end)
	end)
end
