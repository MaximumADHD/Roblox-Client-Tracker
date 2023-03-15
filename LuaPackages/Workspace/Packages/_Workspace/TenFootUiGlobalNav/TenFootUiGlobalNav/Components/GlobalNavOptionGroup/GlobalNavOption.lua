local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local Core = UIBlox.Core
local App = UIBlox.App
local Interactable = Core.Control.Interactable
local ControlState = Core.Control.Enum.ControlState
local ImageSetLabel = Core.ImageSet.Label
local useStyle = Core.Style.useStyle
local CursorKind = App.SelectionImage.CursorKind
local useSelectionCursor = App.SelectionImage.useSelectionCursor

local ICON_SIZE = 42
local OPTION_WIDTH = 86
local OPTION_HEIGHT = 54

local function getContentStyle(controlState, style)
	local contentStyle = {
		Color = style.Theme["SystemPrimaryDefault"].Color,
		Transparency = style.Theme["SystemPrimaryDefault"].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or controlState == ControlState.Pressed then
		contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end

	return contentStyle
end

export type GlobalNavOptionProps = {
	icon: string,
	onActivated: () -> (),
}

local function GlobalNavOption(props: GlobalNavOptionProps): React.ReactElement
	local style = useStyle()
	local selectionCursor = useSelectionCursor(CursorKind.LargePill)
	local controlState, setControlState = React.useState(ControlState.Initialize)

	local iconStyle = getContentStyle(controlState, style)
	return React.createElement(
		Interactable,
		{
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.fromOffset(OPTION_WIDTH, OPTION_HEIGHT),
			onStateChanged = setControlState,
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			[React.Event.Activated] = props.onActivated,
			SelectionImageObject = selectionCursor,
		},
		React.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			BackgroundTransparency = 1,
			Image = props.icon,
			ImageColor3 = iconStyle.Color,
			ImageTransparency = iconStyle.Transparency,
		})
	)
end

return GlobalNavOption
