local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local React = require(CorePackages.Packages.React)
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local Assets = require(InGameMenu.Resources.Assets)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local withStyle = UIBlox.Core.Style.withStyle
local withHoverTooltip = UIBlox.App.Dialog.TooltipV2.withHoverTooltip

local CoreGui = game:GetService("CoreGui")

local LeaveButton = Roact.PureComponent:extend("LeaveButton")

local BOTTOM_MENU_ICON_SIZE = 44
local HIDDEN_Y_OFFSET = 75
local GRADIENT_HEIGHT = 24
local LEAVE_GAME_KEY_CODE_LABEL = {
	[Constants.InputType.MouseAndKeyboard] = Enum.KeyCode.L,
	[Constants.InputType.Gamepad] = Enum.KeyCode.ButtonX,
}

local TWEEN_EASE_RAMP = Enum.EasingDirection.InOut
local TWEEN_EASE_CURVE = Enum.EasingStyle.Sine

LeaveButton.validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer),
	onActivated = t.optional(t.callback),
	containerRef = t.optional(t.table),
	hidden = t.optional(t.boolean),

	-- rodux provided
	inputType = t.optional(t.string),
	startLeavingGame = t.optional(t.callback),
})

function LeaveButton:renderWithProviders(style, localized)
	local inputType = self.props.inputType
	local leaveGameKeyCode = LEAVE_GAME_KEY_CODE_LABEL[inputType]

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 84),
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		ZIndex = self.props.ZIndex or 1,
		[Roact.Ref] = self.props.containerRef,
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
			Button = withHoverTooltip({
				textAlignment = Enum.TextXAlignment.Center,
				headerText = localized.leaveGameTooltip,
				hotkeyCodes = { leaveGameKeyCode },
			}, {
				guiTarget = CoreGui,
				DisplayOrder = Constants.DisplayOrder.Tooltips,
			}, function(triggerPointChanged, onStateChanged)
				return Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
					size = UDim2.fromScale(1, 1),
					onActivated = self.props.onActivated or self.props.startLeavingGame,
					text = localized.leaveGame,
					onStateChanged = onStateChanged,
					[Roact.Change.AbsoluteSize] = triggerPointChanged,
					[Roact.Change.AbsolutePosition] = triggerPointChanged,
				})
			end),
		}),
	})
end

function LeaveButton:render()
	return withStyle(function(style)
		return withLocalization({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame",
			leaveGameTooltip = "CoreScripts.InGameMenu.LeaveTooltip",
		})(function(localized)
			return self:renderWithProviders(style, localized)
		end)
	end)
end

LeaveButton = RoactRodux.connect(function(state, props)
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

local LeaveButtonMemo = React.memo(LeaveButton)

function LeaveButtonAnimationWrapper(props)
	local containerRef = React.useRef(nil)

	local button = Roact.createElement(
		LeaveButtonMemo,
		Cryo.Dictionary.join(props, {
			containerRef = containerRef,
		})
	)

	React.useEffect(function()
		local containerFrame = containerRef.current
		local hidden = props.hidden
		if containerFrame then
			containerFrame.Visible = not hidden
			local pos = hidden and HIDDEN_Y_OFFSET or 0
			containerFrame.Position = UDim2.new(0, 0, 1, pos)
		end
	end, {})

	React.useEffect(function()
		local hidden = props.hidden
		local pos = hidden and HIDDEN_Y_OFFSET or 0
		local containerFrame = containerRef.current
		if containerFrame then
			containerFrame.Visible = true
			pcall(function()
				containerFrame:TweenPosition(
					UDim2.new(0, 0, 1, pos),
					TWEEN_EASE_RAMP,
					TWEEN_EASE_CURVE,
					Constants.LeaveButtonTweenTime,
					true,
					function(status)
						if props.hidden and status == Enum.TweenStatus.Completed then
							containerFrame.Visible = false
						end
					end
				)
			end)
		end
	end, { props.hidden or false })

	return button
end

return LeaveButtonAnimationWrapper
