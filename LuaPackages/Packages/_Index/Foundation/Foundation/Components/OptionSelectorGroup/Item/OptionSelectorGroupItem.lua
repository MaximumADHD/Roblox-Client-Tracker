local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Motion = require(Packages.Motion)
local useMotion = Motion.useMotion

local Components = Foundation.Components
local Icon = require(Components.Icon)
local Image = require(Components.Image)
local Text = require(Components.Text)
local Types = require(Components.Types)
local View = require(Components.View)

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local escapeRichText = require(Foundation.Utility.escapeRichText)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon
local normalizeIconName = iconMigrationUtils.normalizeIconName
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useOptionSelectorGroupItemMotionStates = require(script.Parent.useOptionSelectorGroupItemMotionStates)
local useOptionSelectorGroupItemVariants = require(script.Parent.useOptionSelectorGroupItemVariants)

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local OptionSelectorGroupSize = require(Foundation.Enums.OptionSelectorGroupSize)
type OptionSelectorGroupSize = OptionSelectorGroupSize.OptionSelectorGroupSize

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local useOptionSelectorGroup = require(script.Parent.Parent.useOptionSelectorGroup)

local function getTransparency(
	transparency: number?,
	disabledTransparency: React.Binding<number>
): React.Binding<number>
	return disabledTransparency:map(function(disabledValue)
		if transparency ~= nil then
			return transparency + (1 - transparency) * disabledValue
		end
		return disabledValue
	end)
end

local function getTextStyle(
	textTransparency: React.Binding<number>,
	disabledTransparency: React.Binding<number>,
	contentColor: Color3
): React.Binding<any>
	return React.joinBindings({ textTransparency, disabledTransparency }):map(function(transparencies)
		local targetDisabledTransparency: number = transparencies[2]
		return {
			Color3 = contentColor,
			Transparency = targetDisabledTransparency,
		}
	end)
end

local function renderIcon(props: {
	icon: string?,
	iconExtent: number?,
	iconSize: IconSize,
	contentColor: Color3,
	transparency: React.Binding<number>,
	layoutOrder: number,
	testId: string?,
}): React.ReactNode
	if not props.icon then
		return nil
	end
	-- Non-migrated UIBlox paths stay on Image + token extent. Builder and migratable
	-- names use Icon; resolve migratable names here so Icon sizes them as builder icons.
	if Flags.FoundationOptionSelectorGroupBeta then
		if not isBuilderOrMigratedIcon(props.icon) then
			local extent = props.iconExtent :: number
			return React.createElement(Image, {
				Image = props.icon,
				Size = UDim2.fromOffset(extent, extent),
				imageStyle = props.transparency:map(function(transparency)
					return {
						Color3 = props.contentColor,
						Transparency = transparency,
					}
				end),
				LayoutOrder = props.layoutOrder,
				testId = `{props.testId}--icon`,
			})
		end
	end

	local iconName = normalizeIconName(props.icon)

	local iconProps: Icon.IconProps = {
		name = iconName.name,
		size = props.iconSize,
		style = props.transparency:map(function(transparency)
			return {
				Color3 = props.contentColor,
				Transparency = transparency,
			}
		end),
		LayoutOrder = props.layoutOrder,
		testId = `{props.testId}--icon`,
	}
	if iconName.variant then
		iconProps.variant = iconName.variant
	end

	return React.createElement(Icon, iconProps)
end

export type OptionSelectorGroupItemProps = {
	-- A unique value for the option selector item.
	value: string,
	-- An optional icon shown next to the label.
	icon: string?,
	-- Whether the option selector item is disabled. When `true`, the `setValue` method
	-- will not be invoked, even if the user interacts with the option selector item.
	isDisabled: boolean?,
	-- A label for the option selector item. Optional; defaults to `value` when omitted.
	label: string?,
	-- Optional metadata to give additional details about the option selector item.
	metadata: string?,
	-- Optional description to give more context about the option selector item.
	description: string?,
	-- Size of the option selector item.
	-- **DEPRECATED**: Prefer `size` on `OptionSelectorGroup.Root`, which takes `OptionSelectorGroupSize`
	-- and cascades via context behind FoundationOptionSelectorGroupBeta. Kept for backwards
	-- compatibility when Root omits `size`; `InputSize.Large` falls back to `Medium` behind beta.
	size: InputSize?,
	-- Absolute/scaled width override. Prefer `fillBehavior` for flex layouts; use `width` when
	-- you need cross-directional scaled sizing that fill/fit cannot express.
	width: UDim?,
	-- How the item sizes along the group's main axis. Only applies to stacked-elements items
	-- (Horizontal group); defaults to Fit. Inline-elements items (Vertical group) always span
	-- the group width (Fill).
	-- **DEPRECATED**: Prefer `fillBehavior` on `OptionSelectorGroup.Root`, which cascades via
	-- context behind FoundationOptionSelectorGroupBeta when Root explicitly sets it.
	fillBehavior: FillBehavior?,
} & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = InputSize.Medium,
	width = UDim.new(0, 0),
}

-- selene: allow(high_cyclomatic_complexity) -- remove when FoundationOptionSelectorGroupBeta is cleaned up
local function OptionSelectorGroupItem(
	optionSelectorGroupItemProps: OptionSelectorGroupItemProps,
	ref: React.Ref<GuiObject>?
)
	local props = withDefaults(optionSelectorGroupItemProps, defaultProps)
	local optionSelectorGroupContext = useOptionSelectorGroup()

	local isSelected = optionSelectorGroupContext.value == props.value
	-- Beta prefers the Root-cascaded OptionSelectorGroupSize; the deprecated Item `size` is a
	-- fallback and its `Large` maps to `Medium` since beta has no `Large`.
	local size: InputSize = if Flags.FoundationOptionSelectorGroupBeta
		then if optionSelectorGroupContext.size ~= nil
			then optionSelectorGroupContext.size
			elseif (props.size :: InputSize) == InputSize.Large then OptionSelectorGroupSize.Medium
			else props.size
		else props.size

	-- Item orientation is opposite the group: Vertical group → label in the top strip;
	-- Horizontal group → label below the strip. fillBehavior only applies to the latter.
	local orientation: Orientation = if optionSelectorGroupContext.orientation == Orientation.Vertical
		then Orientation.Horizontal
		else Orientation.Vertical

	local itemFillBehavior: FillBehavior? = if Flags.FoundationOptionSelectorGroupBeta
		then if optionSelectorGroupContext.fillBehavior ~= nil
			then optionSelectorGroupContext.fillBehavior
			else props.fillBehavior
		else props.fillBehavior

	local fillBehavior: FillBehavior
	if Flags.FoundationOptionSelectorGroupBeta or Flags.FoundationOptionSelectorGroupFixes then
		-- Inline (Vertical group) always fills; stacked (Horizontal group) defaults to Fit.
		fillBehavior = if orientation == Orientation.Horizontal
			then FillBehavior.Fill
			else itemFillBehavior or FillBehavior.Fit
	else
		fillBehavior = if orientation == Orientation.Horizontal
			then FillBehavior.Fit
			else itemFillBehavior or FillBehavior.Fill
	end
	local isStackedFit = orientation == Orientation.Vertical and fillBehavior == FillBehavior.Fit
	local containerSize = if Flags.FoundationOptionSelectorGroupBeta or Flags.FoundationOptionSelectorGroupFixes
		then if isStackedFit then nil else UDim2.fromScale(1, 0)
		else UDim2.fromScale(1, 0)

	local tokens = useTokens()
	local variantProps = useOptionSelectorGroupItemVariants(
		tokens,
		size,
		orientation,
		fillBehavior,
		if Flags.FoundationOptionSelectorGroupBeta then isSelected else nil
	)

	local contentColor = variantProps.content.Color3 :: Color3
	local supportingContentColor = if variantProps.supportingContent
		then variantProps.supportingContent.Color3 :: Color3
		else contentColor
	local strokeStyle = if Flags.FoundationOptionSelectorGroupBeta
		then variantProps.container.stroke :: Types.ColorStyleValue
		else if isSelected then tokens.Color.System.Contrast else tokens.Color.Stroke.Emphasis

	local motionStates = useOptionSelectorGroupItemMotionStates(0, Constants.DISABLED_TRANSPARENCY)
	local disabledValues, animateDisabledValues = useMotion(motionStates.Default)
	local values, _ = useMotion(motionStates.Default)

	React.useEffect(function()
		if props.isDisabled then
			animateDisabledValues(motionStates.Disabled)
		else
			animateDisabledValues(motionStates.Default)
		end
	end, { props.isDisabled })

	local onActivated = React.useCallback(
		function()
			optionSelectorGroupContext.onValueChanged(
				if optionSelectorGroupContext.value == props.value then nil else props.value
			)
		end,
		{ props.isDisabled, props.value, optionSelectorGroupContext.onValueChanged, optionSelectorGroupContext.value } :: { unknown }
	)

	props.testId = `{optionSelectorGroupContext.testId}--item-{props.value}`

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, variantProps.container.radius),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens, variantProps.container.radius } :: { unknown })

	if Flags.FoundationOptionSelectorGroupBeta then
		local content = {
			Icon = renderIcon({
				icon = props.icon,
				iconExtent = variantProps.icon.extent,
				iconSize = variantProps.icon.size,
				contentColor = contentColor,
				transparency = disabledValues.transparency,
				layoutOrder = 1,
				testId = props.testId,
			}),
			Text = React.createElement(View, {
				tag = (variantProps.textContainer :: { tag: string }).tag,
				LayoutOrder = 2,
				testId = `{props.testId}--body`,
			}, {
				Label = React.createElement(Text, {
					Text = escapeRichText(props.label or props.value),
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					RichText = true,
					tag = variantProps.label.tag,
					textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
					LayoutOrder = 1,
					testId = `{props.testId}--label`,
				}),
				Metadata = if props.metadata
					then React.createElement(Text, {
						Text = escapeRichText(props.metadata),
						TextTruncate = Enum.TextTruncate.None,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						RichText = true,
						tag = variantProps.metadata.tag,
						textStyle = getTextStyle(
							values.textTransparency,
							disabledValues.transparency,
							supportingContentColor
						),
						LayoutOrder = 2,
						testId = `{props.testId}--metadata`,
					})
					else nil,
				Description = if props.description
					then React.createElement(Text, {
						Text = escapeRichText(props.description),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						RichText = true,
						tag = variantProps.description.tag,
						textStyle = getTextStyle(
							values.textTransparency,
							disabledValues.transparency,
							supportingContentColor
						),
						LayoutOrder = 3,
						testId = `{props.testId}--description`,
					})
					else nil,
			}),
		}

		return React.createElement(
			View,
			withCommonProps(props, {
				stroke = {
					Color = strokeStyle.Color3,
					Transparency = getTransparency(strokeStyle.Transparency, disabledValues.transparency),
				},
				Size = containerSize,
				padding = variantProps.container.padding,
				selection = {
					Selectable = if props.isDisabled then false else optionSelectorGroupContext.Selectable,
				},
				cursor = cursor,
				onActivated = onActivated,
				isDisabled = props.isDisabled,
				tag = variantProps.container.tag,
				ref = ref,
			}),
			{
				ItemInner = React.createElement(View, {
					tag = variantProps.itemInner.tag,
					Size = containerSize,
					testId = `{props.testId}--content`,
				}, content),
			}
		)
	end

	local labelElement = React.createElement(Text, {
		Text = escapeRichText(props.label or props.value),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		RichText = true,
		tag = variantProps.label.tag,
		textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
		LayoutOrder = 2,
		testId = `{props.testId}--label`,
	})

	return React.createElement(
		View,
		withCommonProps(props, {
			stroke = {
				Color = strokeStyle.Color3,
				Transparency = getTransparency(strokeStyle.Transparency, disabledValues.transparency),
			},
			Size = containerSize,
			selection = {
				Selectable = if props.isDisabled then false else optionSelectorGroupContext.Selectable,
			},
			cursor = cursor,
			onActivated = onActivated,
			isDisabled = props.isDisabled,
			tag = if Flags.FoundationOptionSelectorGroupFixes
				then variantProps.container.tag
				else {
					["auto-xy"] = fillBehavior ~= FillBehavior.Fill,
					["fill auto-y"] = fillBehavior == FillBehavior.Fill,
					[variantProps.container.tag] = true,
				},
			ref = ref,
		}),
		{
			ItemInner = React.createElement(View, {
				tag = variantProps.itemInner.tag,
				Size = containerSize,
			}, {
				Header = React.createElement(View, {
					tag = if Flags.FoundationOptionSelectorGroupFixes
						then (variantProps.header :: { tag: string }).tag
						else "row align-y-center gap-small size-full-0 auto-y",
					LayoutOrder = 1,
				}, {
					Icon = if props.icon
						then React.createElement(Icon, {
							name = props.icon,
							size = variantProps.icon.size,
							style = disabledValues.transparency:map(function(transparency)
								return {
									Color3 = contentColor,
									Transparency = transparency,
								}
							end),
							LayoutOrder = 0,
							testId = `{props.testId}--icon`,
						})
						else nil,
					-- Inline: label here. Stacked Fit: label in TextContainer. Else: grow for trailing check.
					Label = if orientation == Orientation.Horizontal
						then labelElement
						elseif Flags.FoundationOptionSelectorGroupFixes and isStackedFit then nil
						else React.createElement(View, { tag = "grow" }),
					-- flex-x-between needs a leading sibling when there is no icon.
					LeadingSpacer = if Flags.FoundationOptionSelectorGroupFixes
							and isStackedFit
							and not props.icon
						then React.createElement(View, {
							Size = UDim2.fromOffset(0, 0),
							LayoutOrder = 0,
						})
						else nil,
					Checkmark = React.createElement(Icon, {
						name = IconName.CheckLarge,
						size = variantProps.icon.size,
						style = disabledValues.transparency:map(function(transparency)
							return {
								Color3 = contentColor,
								-- Hide via Transparency (not Visible) so selection does not shift layout.
								Transparency = if isSelected then transparency else 1,
							}
						end),
						LayoutOrder = 3,
						testId = if isSelected
							then `{props.testId}--checkmark-selected`
							else `{props.testId}--checkmark-unselected`,
					}),
				}),
				TextContainer = if Flags.FoundationOptionSelectorGroupFixes and isStackedFit
					then React.createElement(View, {
						tag = (variantProps.textContainer :: { tag: string }).tag,
						LayoutOrder = 2,
					}, {
						Label = if orientation == Orientation.Vertical then labelElement else nil,
						Metadata = if props.metadata
							then React.createElement(Text, {
								Text = escapeRichText(props.metadata),
								TextTruncate = Enum.TextTruncate.AtEnd,
								TextXAlignment = Enum.TextXAlignment.Left,
								RichText = true,
								tag = variantProps.metadata.tag,
								textStyle = getTextStyle(
									values.textTransparency,
									disabledValues.transparency,
									contentColor
								),
								LayoutOrder = 3,
								testId = `{props.testId}--metadata`,
							})
							else nil,
						Description = if props.description
							then React.createElement(Text, {
								Text = escapeRichText(props.description),
								TextWrapped = true,
								TextXAlignment = Enum.TextXAlignment.Left,
								RichText = true,
								tag = variantProps.description.tag,
								textStyle = getTextStyle(
									values.textTransparency,
									disabledValues.transparency,
									contentColor
								),
								LayoutOrder = 4,
								testId = `{props.testId}--description`,
							})
							else nil,
					})
					else nil,
				Label = if Flags.FoundationOptionSelectorGroupFixes and isStackedFit
					then nil
					elseif orientation == Orientation.Vertical then labelElement
					else nil,
				Metadata = if Flags.FoundationOptionSelectorGroupFixes and isStackedFit
					then nil
					elseif props.metadata then React.createElement(Text, {
						Text = escapeRichText(props.metadata),
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
						RichText = true,
						tag = variantProps.metadata.tag,
						textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
						LayoutOrder = 3,
						testId = `{props.testId}--metadata`,
					})
					else nil,
				Description = if Flags.FoundationOptionSelectorGroupFixes and isStackedFit
					then nil
					elseif props.description then React.createElement(Text, {
						Text = escapeRichText(props.description),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						RichText = true,
						tag = variantProps.description.tag,
						textStyle = getTextStyle(values.textTransparency, disabledValues.transparency, contentColor),
						LayoutOrder = 4,
						testId = `{props.testId}--description`,
					})
					else nil,
			}),
		}
	)
end

return React.memo(React.forwardRef(OptionSelectorGroupItem))
