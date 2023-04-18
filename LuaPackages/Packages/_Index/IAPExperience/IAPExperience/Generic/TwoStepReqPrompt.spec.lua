local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local TwoStepReqPrompt = require(GenericRoot.TwoStepReqPrompt)

return function()
	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleAndLocalizationComponent({
				Overlay = Roact.createElement(TwoStepReqPrompt, {
					position = UDim2.new(0.5, 0, 0.5, 0),
					anchorPoint = Vector2.new(0.5, 0.5),
					screenSize = Vector2.new(100, 100),

					doneControllerIcon = XBOX_A_ICON,
					cancelControllerIcon = XBOX_B_ICON,

					doneActivated = function() end,
					navigateToSecuritySettings = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
