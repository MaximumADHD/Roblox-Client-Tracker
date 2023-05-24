local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local EventType = require(script.Parent.Parent.EventType)
local Roact = require(CorePackages.Roact)
local VRFTUXToolTips = require(script.Parent.Parent.Parent.Components.Tooltips.VRFTUXToolTips)
local UIBlox = require(CorePackages.UIBlox)
local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

type Event = EventType.Event
type TooltipProps = {
	tooltipButtons: {
		Text: string,
		Controller: Enum.UserCFrame,
		ButtonKeycode: Enum.KeyCode,
	},
}

local MovementTooltipEvent = {
	Name = "MovementTooltipEvent",
}

local tooltip

function MovementTooltipEvent.StartEvent()
	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local MovementTooltip = Roact.createElement(UIBlox.Core.Style.Provider, {
		style = appStyle,
	}, {
		Roact.createElement(VRFTUXToolTips, {
			tooltipButtons = {
				{
					Text = "Turn",
					Controller = Enum.UserCFrame.RightHand,
					ButtonKeycode = Enum.KeyCode.ButtonR3,
				},
				{
					Text = "Move",
					Controller = Enum.UserCFrame.LeftHand,
					ButtonKeycode = Enum.KeyCode.ButtonL3,
				},
				{
					Text = "Jump",
					Controller = Enum.UserCFrame.RightHand,
					ButtonKeycode = Enum.KeyCode.ButtonA,
				},
			},
		} :: TooltipProps),
	})

	tooltip = Roact.mount(MovementTooltip, CoreGui:FindFirstChild("FTUXMenu"), "MovementTooltip")
end

function MovementTooltipEvent.StopEvent()
	if tooltip then
		Roact.unmount(tooltip)
	end
end

return MovementTooltipEvent :: Event
