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

local PerspectiveTooltipEvent = {
	Name = "PerspectiveTooltipEvent",
}

local Tooltip

function PerspectiveTooltipEvent.StartEvent()
	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local PerspectiveTooltip = Roact.createElement(UIBlox.Core.Style.Provider, {
		style = appStyle,
	}, {
		Roact.createElement(VRFTUXToolTips, {
			tooltipButtons = {
				{
					Text = "Press",
					Controller = Enum.UserCFrame.RightHand,
					ButtonKeycode = Enum.KeyCode.ButtonR3,
				},
			},
		} :: TooltipProps),
	})

	Tooltip = Roact.mount(PerspectiveTooltip, CoreGui:FindFirstChild("FTUXMenu"), "PerspectiveTooltip")
end

function PerspectiveTooltipEvent.StopEvent()
	if Tooltip then
		Roact.unmount(Tooltip)
	end
end

return PerspectiveTooltipEvent :: Event
