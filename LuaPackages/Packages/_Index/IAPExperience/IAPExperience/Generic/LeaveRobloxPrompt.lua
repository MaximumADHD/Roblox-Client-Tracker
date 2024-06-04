local IAPExperienceRoot = script.Parent.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local LOC_KEY = "IAPExperience.LeaveRoblox.%s"

local LeaveRobloxPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	continueActivated: () -> any?,
	cancelActivated: () -> any?,
}

LeaveRobloxPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function LeaveRobloxPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			TitleText = {
				key = LOC_KEY:format("Title.LeavingRoblox"),
			},
			BodyText = {
				key = LOC_KEY:format("Text.ExternalWebsiteWarning"),
			},
			ButtonCancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
			ButtonContinue = {
				key = LOC_KEY:format("Action.Continue"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function LeaveRobloxPrompt:renderAlert(locMap: { [string]: string })
	local prompt = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 1,
			Active = true,
			Selectable = false,
		}, {
			AlertWindow = Roact.createElement(InteractiveAlert, {
				title = locMap.TitleText,
				bodyText = locMap.BodyText,
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								onActivated = self.props.cancelActivated,
								text = locMap.ButtonCancel,
							},
						},
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								onActivated = self.props.continueActivated,
								text = locMap.ButtonContinue,
							},
						},
					},
				},
				screenSize = self.props.screenSize,
			}),
		})

	return prompt
end

return LeaveRobloxPrompt
