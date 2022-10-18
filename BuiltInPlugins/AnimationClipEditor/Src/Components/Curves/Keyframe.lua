--!strict
--[[
	Draws a keyframe in the curve canvas. Displays a tooltip with detailed information about the keyframe.

	Properties:
		Color: Color of the keyframe
		InterpolationMode: Interpolation mode of the curve following this keyframe
		LeftSlope: Left slope of this keyframe. Nil if auto-tangent
		Position: Position of the center of the keyframe
		PrevInterpolationMode: Interpolation mode of the curve leading to this keyframe, if any
		RightSlope: Right slope of this keyframe. Nil if auto-tangent
		Selected: Whether this keyframe is selected
		Path: Full path of the track this keyframe belongs to
		Width: Size of the keyframe
		ZIndex: Display index of this component

		OnRightClick: Callback for when the user right clicks on the keyframe
		OnInputBegan: Callback for when the user starts interacting with the keyframe
		OnInputEnded: Callback for when the user stops interacting with the keyframe
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Tooltip = Framework.UI.Tooltip
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local Keyframe = Roact.PureComponent:extend("Keyframe")

export type Props = {
	-- State/Context
	Stylizer: any,
	Theme: any,

	-- Properties
	Color: Color3,
	InterpolationMode: Enum.KeyInterpolationMode,
	LeftSlope: number?,
	Path: PathUtils.Path,
	Position: Vector2,
	PrevInterpolationMode: Enum.KeyInterpolationMode,
	RightSlope: number?,
	Selected: boolean,
	Width: number?,
	ZIndex: number?,

	OnRightClick: (any, any) -> (),
	OnInputBegan: (any, any) -> (),
	OnInputEnded: (any, any) -> (),
}

function Keyframe:buildTooltip(): ()
	local props = self.props
	local localization = self.props.Localization
	local tooltipText

	local function formatSlope(slope: number): string
		return string.format("%.3f", if slope == 0 then math.abs(slope) else slope * Constants.TICK_FREQUENCY)
	end

	local function addTangentInformation(labelId: string, slope: number?): string
		local info = "\n" .. localization:getText("Curves", labelId) .. " "
		if slope then
			info = info .. localization:getText("Curves", "TangentValuePerSecond", { value = formatSlope(slope) })
		else
			info = info .. localization:getText("Curves", "TangentAuto")
		end
		return info
	end

	tooltipText = PathUtils.toString(props.Path or {}) .. "\n"
	tooltipText = tooltipText
		.. localization:getText("Curves", "InterpolationMode2", { interpolationMode = props.InterpolationMode.Name })
	if props.PrevInterpolationMode == Enum.KeyInterpolationMode.Cubic then
		tooltipText = tooltipText .. addTangentInformation("LeftTangentLabel", props.LeftSlope)
	end
	if props.InterpolationMode == Enum.KeyInterpolationMode.Cubic then
		tooltipText = tooltipText .. addTangentInformation("RightTangentLabel", props.RightSlope)
	end

	return tooltipText
end

function Keyframe:render(): ()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local width = props.Width or Constants.KEYFRAME_WIDTH
	local color = props.Color
	local selected = props.Selected
	local zIndex = props.ZIndex

	local tooltipText = self:buildTooltip()

	local borderSize = if selected then Constants.KEYFRAME_BORDER_SIZE_SELECTED else Constants.KEYFRAME_BORDER_SIZE
	local borderColor = if selected then theme.keyframe.Default.selected.borderColor else color

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(0, width, 0, width),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0, props.Position.X, 0, props.Position.Y),
		Rotation = 45,

		ImageTransparency = 1,
		BackgroundTransparency = 0,
		AutoButtonColor = false,

		BorderSizePixel = borderSize,
		BorderColor3 = borderColor,
		BackgroundColor3 = color,
		ZIndex = zIndex,

		[Roact.Event.MouseButton2Click] = props.OnRightClick,
		[Roact.Event.InputBegan] = props.OnInputBegan,
		[Roact.Event.InputEnded] = props.OnInputEnded,
	}, {
		Tooltip = tooltipText and Roact.createElement(Tooltip, {
			Text = tooltipText,
			ShowDelay = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

Keyframe = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(Keyframe)

return Keyframe
