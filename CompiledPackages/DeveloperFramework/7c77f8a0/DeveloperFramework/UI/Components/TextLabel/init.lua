--[[
	(USES STYLESHEETS, REQUIRES CHANGES)
	A simple TextLabel. This component will be deprecated in future in favor of a stylesheet for the plain TextLabel instance.

	Required Props:
		string Text: The text to display in this button.

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying Frame.
		Vector2 AnchorPoint: The AnchorPoint of the component.
		UDim2 Position: The Position of the component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext. (DEPRECATED)
		number LayoutOrder: The layout order of this component in a list.
		UDim2 Size: The size of this component.
		boolean RichText: Whether to not to use rich text formatting.
		Style Style: The style with which to render this component. (DEPRECATED PREFER style tag)
		StyleModifier StyleModifier: The StyleModifier index into Style. (DEPRECATED PREFER style tag)
		Enum.TextXAlignment TextXAlignment: Sets text horizontal alignment.
		boolean TextWrapped: Whether the text label should wrap. (PREFER Wrap tag)
		number ZIndex: The render index of this component.
		Color3 TextColor: The color of the label. (PREFER style tag)
		number TextTransparency: The transparency of this text.
		Enum.AutomaticSize AutomaticSize: The automatic size of this text. (PREFER X-Fit, X-FitX or X-FitY tag)
		Enum.TextTruncate TextTruncate: The text truncation of this text.
		Enum.Font Font: The font of this text. (PREFER style tag)
		any FontFace: A way to use fonts not in Enum.Font. If FontFace is given, it is used instead of the Font prop (PREFER style tag)
		boolean TextSelectable: Defines whether you can select text or not
		number TextSize: The size of this text. (PREFER style tag)
		Enum.TextXAlignment TextXAlignment: The x alignment of this text.
		Enum.TextYAlignment TextYAlignment: The y alignment of this text.
		number BackgroundTransparency: The transparency of the text label.
		boolean ClipsDescendants: Setse if the text label will clip descendants that spill outside its bound.

	Style Values:
		Color3 TextColor: The color of the text label.
		number BackgroundTransparency: The transparency of the text label.
		number TextTransparency: The transparency of this text.
		Enum.TextXAlignment TextXAlignment: The x alignment of this text.
		Enum.TextYAlignment TextYAlignment: The y alignment of this text.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local Util = require(Framework.Util)
local Immutable = Util.Immutable
local Typecheck = require(Framework.Util.Typecheck)
local prioritize = Util.prioritize

local withForwardRef = require(Framework.Wrappers.withForwardRef)

local TextLabel = Roact.PureComponent:extend("TextLabel")
Typecheck.wrap(TextLabel, script)

local DEFAULT_SIZE = UDim2.fromScale(0, 0)
local DEFAUlT_TRANSPARENCY = 0

function TextLabel:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local size = props.Size
	local text = props.Text
	local zIndex = props.ZIndex

	local tags = if supportsStyleSheets then props[React.Tag] else nil
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer

	local deprecatedStyle
	if supportsStyleSheets and typeof(style) == "string" then
		deprecatedStyle = style
		if game:GetFastFlag("DebugDeveloperFrameworkSdk") then
			local Root = Framework:FindFirstAncestorWhichIsA("Plugin"):FindFirstChildWhichIsA("Folder")
			print(
				`[DebugDeveloperFrameworkSdk] {Root.Name} StyleSheets DEPRECATED: Replace TextLabel Style = {style} with [React.Tag] = {deprecatedStyle}`
			)
		end
		style = {}
	end

	local backgroundTransparency = if supportsStyleSheets
		then prioritize(props.BackgroundTransparency, style.BackgroundTransparency)
		else prioritize(props.BackgroundTransparency, style.BackgroundTransparency, 1)
	local font = prioritize(props.Font, style.Font)
	local fontFace = props.FontFace
	local richText = props.RichText
	local textColor = prioritize(props.TextColor, style.TextColor)
	local textSize = prioritize(props.TextSize, style.TextSize)
	local transparency = prioritize(props.TextTransparency, style.TextTransparency)
	local textXAlignment = prioritize(props.TextXAlignment, style.TextXAlignment)
	local textYAlignment = prioritize(props.TextYAlignment, style.TextYAlignment)
	local textTruncate = props.TextTruncate
	local textWrapped = props.TextWrapped
	local automaticSize = props.AutomaticSize
	local ref = props.ForwardRef
	local onAbsoluteSizeChange = props[Roact.Change.AbsoluteSize]
	-- A text label with no specified size or automatic size should fill parent container
	if supportsStyleSheets then
		if not size and automaticSize then
			if automaticSize == Enum.AutomaticSize.XY then
				size = UDim2.fromScale(0, 0)
			elseif automaticSize == Enum.AutomaticSize.X then
				size = UDim2.fromScale(0, 1)
			elseif automaticSize == Enum.AutomaticSize.Y then
				size = UDim2.fromScale(1, 0)
			end
		end
	elseif not size and not automaticSize then
		size = UDim2.fromScale(1, 1)
	end

	local textLabelProps = {
		AnchorPoint = anchorPoint,
		AutomaticSize = automaticSize,
		Position = position,
		BackgroundTransparency = backgroundTransparency,
		Font = if fontFace ~= nil then nil else font,
		FontFace = fontFace,
		LayoutOrder = layoutOrder,
		RichText = richText,
		Size = size,
		Text = text,
		TextColor3 = textColor,
		TextSize = textSize,
		TextTruncate = textTruncate,
		TextTransparency = transparency,
		TextWrapped = textWrapped,
		TextXAlignment = textXAlignment,
		TextYAlignment = textYAlignment,
		ZIndex = zIndex,
		[Roact.Ref] = ref,
		[Roact.Change.AbsoluteSize] = onAbsoluteSizeChange,
	}
	if supportsStyleSheets then
		textLabelProps[React.Tag] = joinTags(
			"Component-TextLabel",
			tags,
			deprecatedStyle,
			if size == DEFAULT_SIZE then "X-DefaultSize" else nil,
			if backgroundTransparency == DEFAUlT_TRANSPARENCY then "X-DefaultTransparency" else nil
		)
	end
	if props.TextSelectable then
		return Roact.createElement(
			"TextBox",
			Immutable.JoinDictionaries(textLabelProps, {
				ClearTextOnFocus = false,
				MultiLine = textWrapped,
				TextEditable = false,
			}),
			props[Roact.Children]
		)
	else
		return Roact.createElement("TextLabel", textLabelProps, props[Roact.Children])
	end
end

if not supportsStyleSheets then
	TextLabel = withContext({
		Stylizer = ContextServices.Stylizer,
	})(TextLabel)
end

return withForwardRef(TextLabel)
