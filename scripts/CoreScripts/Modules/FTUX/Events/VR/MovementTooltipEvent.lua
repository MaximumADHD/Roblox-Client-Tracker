local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local EventType = require(script.Parent.Parent.EventType)
local Roact = require(CorePackages.Roact)
local VRFTUXToolTips = require(script.Parent.Parent.Parent.Components.Tooltips.VRFTUXToolTips)
local UIBlox = require(CorePackages.UIBlox)
local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

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
	local movementTooltipContent = Roact.createElement(VRFTUXToolTips, {
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
	} :: TooltipProps)

	local MovementTooltip
	if GetFFlagEnableStyleProviderCleanUp() then
		MovementTooltip = renderWithCoreScriptsStyleProvider({
			movementTooltipContent,
		})
	else
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
		MovementTooltip = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			movementTooltipContent,
		})
	end

	tooltip = Roact.mount(MovementTooltip, CoreGui:FindFirstChild("FTUXMenu"), "MovementTooltip")
end

function MovementTooltipEvent.StopEvent()
	if tooltip then
		Roact.unmount(tooltip)
	end
end

return MovementTooltipEvent :: Event
