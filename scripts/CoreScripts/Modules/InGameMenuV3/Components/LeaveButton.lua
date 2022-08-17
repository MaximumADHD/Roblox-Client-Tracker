--!nonstrict
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local Assets = require(InGameMenu.Resources.Assets)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local KeyLabel = UIBlox.App.Menu.KeyLabel
local withStyle = UIBlox.Core.Style.withStyle

local LeaveButton = Roact.PureComponent:extend("LeaveButton")

local BOTTOM_MENU_ICON_SIZE = 44
local HIDDEN_Y_OFFSET = 75
local GRADIENT_HEIGHT = 24
local LEAVE_GAME_KEY_CODE_LABEL = {
	[Constants.InputType.MouseAndKeyboard] = Enum.KeyCode.L,
	[Constants.InputType.Gamepad] = Enum.KeyCode.ButtonX,
}

local TWEEN_TIME = 0.208
local TWEEN_EASE_RAMP = Enum.EasingDirection.InOut
local TWEEN_EASE_CURVE = Enum.EasingStyle.Sine

LeaveButton.validateProps = t.strictInterface({
	hidden = t.optional(t.boolean),
	ZIndex = t.optional(t.integer),
	onActivated = t.optional(t.callback),

	-- rodux provided
	inputType = t.optional(t.string),
	startLeavingGame = t.optional(t.callback),
})

function LeaveButton:init()
	self.containerRef = Roact.createRef()
end

function LeaveButton:didMount()
	local containerFrame = self.containerRef:getValue()
	local hidden = self.props.hidden
	if containerFrame then
		containerFrame.Visible = not hidden
		local pos = hidden and HIDDEN_Y_OFFSET or 0
		containerFrame.Position = UDim2.new(0, 0, 1, pos)
	end
end

function LeaveButton:didUpdate(priorProps, _)
	local hidden = self.props.hidden
	local visibilityChanged = hidden ~= priorProps.hidden
	if visibilityChanged then
		local pos = hidden and HIDDEN_Y_OFFSET or 0
		local containerFrame = self.containerRef:getValue()
		if containerFrame then
			containerFrame.Visible = true
			containerFrame:TweenPosition(
				UDim2.new(0, 0, 1, pos),
				TWEEN_EASE_RAMP,
				TWEEN_EASE_CURVE,
				TWEEN_TIME,
				true,
				function(status)
					if self.props.hidden and status == Enum.TweenStatus.Completed then
						containerFrame.Visible = false
					end
				end
			)
		end
	end
end

function LeaveButton:renderWithProviders(style, localized)
	local inputType = self.props.inputType
	local leaveGameKeyCode = LEAVE_GAME_KEY_CODE_LABEL[inputType]

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 84),
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		ZIndex = self.props.ZIndex or 1,
		[Roact.Ref] = self.containerRef,
	}, {
		Gradient = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
			Image = Assets.Images.ButtonStackGradient,
			BackgroundTransparency = 1,
		}),
		LeaveGame = Roact.createElement("Frame", {
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			Size = UDim2.new(1, 0, 0, BOTTOM_MENU_ICON_SIZE + 24),
			Position = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
			AnchorPoint = Vector2.new(1, 0),
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 0),
				PaddingBottom = UDim.new(0, 24),
				PaddingLeft = UDim.new(0, 24),
				PaddingRight = UDim.new(0, 24),
			}),
			Button = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
				size = UDim2.fromScale(1, 1),
				onActivated = self.props.onActivated or self.props.startLeavingGame,
				text = localized.leaveGame,
			}),
			KeyLabel = leaveGameKeyCode and Roact.createElement(KeyLabel, {
				keyCode = leaveGameKeyCode,
				iconThemeKey = "UIDefault",
				textThemeKey = "SystemPrimaryContent",
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -16, 0.5, 0),
				LayoutOrder = 2,
				ZIndex = (self.props.ZIndex or 1) + 1,
			}) or nil,
		}),
	})
end

function LeaveButton:render()
	return withStyle(function(style)
		return withLocalization({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame",
		})(function(localized)
			return self:renderWithProviders(style, localized)
		end)
	end)
end

return RoactRodux.connect(function(state, props)
	return {
		inputType = state.displayOptions.inputType,
	}
end, function(dispatch)
	return {
		startLeavingGame = function()
			dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))

			SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsLeaveGameName, {})
		end,
	}
end)(LeaveButton)
