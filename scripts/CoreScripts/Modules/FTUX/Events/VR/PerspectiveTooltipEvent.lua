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

local PerspectiveTooltipEvent = {
	Name = "PerspectiveTooltipEvent",
}

local Tooltip

function PerspectiveTooltipEvent.StartEvent()
	local perspectiveTooltipContent = Roact.createElement(VRFTUXToolTips, {
		tooltipButtons = {
			{
				Text = "Press",
				Controller = Enum.UserCFrame.RightHand,
				ButtonKeycode = Enum.KeyCode.ButtonR3,
			},
		},
	} :: TooltipProps)

	local PerspectiveTooltip
	if GetFFlagEnableStyleProviderCleanUp() then
		PerspectiveTooltip = renderWithCoreScriptsStyleProvider({
			perspectiveTooltipContent,
		})
	else
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
		PerspectiveTooltip = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			perspectiveTooltipContent,
		})
	end

	Tooltip = Roact.mount(PerspectiveTooltip, CoreGui:FindFirstChild("FTUXMenu"), "PerspectiveTooltip")
end

function PerspectiveTooltipEvent.StopEvent()
	if Tooltip then
		Roact.unmount(Tooltip)
	end
end

return PerspectiveTooltipEvent :: Event
