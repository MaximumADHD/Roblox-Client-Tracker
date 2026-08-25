local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Components = Foundation.Components
local Checkbox = require(Components.Checkbox)
local Divider = require(Components.Divider)
local Flags = require(Foundation.Utility.Flags)
local Icon = require(Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)
local RadioGroup = require(Components.RadioGroup)
local Text = require(Components.Text)
local Toggle = require(Components.Toggle)
local Types = require(Foundation.Components.Types)
local View = require(Components.View)
local devAssert = require(Foundation.Utility.devAssert)
local escapeRichText = require(Foundation.Utility.escapeRichText)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local useListItemVariants = require(script.Parent.useListItemVariants)

local ListAccessory = require(script.Parent.ListAccessory)
local useListAccessoryVariants = require(script.Parent.useListAccessoryVariants)

local useList = require(script.Parent.Parent.useList)

type InputSize = InputSize.InputSize
type ListAccessory = ListAccessory.ListAccessory
type ListItemInputType = ListItemInputType.ListItemInputType

local RADIO_VALUE = "radio"

local DESCRIPTION_GAP_TAG: { [InputSize]: string } = {
	[InputSize.XSmall] = "gap-xxsmall",
	[InputSize.Small] = "gap-xxsmall",
	[InputSize.Medium] = "gap-xsmall",
	[InputSize.Large] = "gap-xsmall",
}

-- The trailing input accessory. Use the `"Chevron"`/`"None"` string shorthands for the static accessories,
-- or a config object to select an interactive control (Checkbox / Toggle / Radio) with its checked state
-- and an `onActivated(checked)` handler that activates only the input (see `ListItemProps.input`).
--
-- `Chevron`/`None` are not valid config-object `type`s: a chevron is a static icon and `None` renders
-- nothing, so `isChecked`/`onActivated` would be dead. Pass them as the string shorthands instead.
export type ListItemInput = "Chevron" | "None" | {
	type: "Checkbox" | "Toggle" | "Radio",
	isChecked: boolean?,
	onActivated: ((boolean) -> ())?,
}

export type ListItemProps = {
	-- Leading accessory: an icon-name string, or a `ListAccessory` config (Avatar / Media / Icon).
	leading: string? | ListAccessory,
	-- Custom trailing content rendered in the trailing slot (alongside or instead of an input accessory).
	trailing: React.ReactNode?,
	-- Row title: a plain string, or `{ title, metadata }` to render secondary metadata next to the title.
	title: string? | {
		title: string?,
		metadata: string?,
	},
	-- Secondary description line shown under the title.
	description: string?,
	-- Activates the WHOLE item: runs when the row is tapped. As a plain function the trailing accessory
	-- defaults to a chevron.
	--
	-- Activation belongs in exactly one place — either here (whole item) OR on `input.onActivated` (the
	-- trailing input), never both. Passing both throws in dev. Priority: when the trailing input is
	-- tapped, its own `input.onActivated` runs if set; otherwise it falls back to this item-level handler.
	--
	-- **DEPRECATED** The config-object form `{ onActivated, inputType, isChecked }` is the legacy coupled
	-- API that also selected the input. Prefer a plain function together with the `input` prop.
	onActivated: (() -> () | {
		onActivated: () -> (),
		inputType: ListItemInputType?,
		isChecked: boolean?,
	})?,
	-- Trailing input accessory, chosen independently of whether the row is tappable. Either the `"Chevron"`/
	-- `"None"` string shorthands, or `{ type, isChecked, onActivated }` for an interactive control (Checkbox
	-- / Toggle / Radio) where `onActivated(checked)` activates ONLY the input and takes priority over the
	-- item-level `onActivated`. Set one owner of activation, not both.
	input: ListItemInput?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {}

local function ListItem(listItemProps: ListItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(listItemProps, defaultProps)

	-- A ListItem can be activated in exactly one place: either the whole item is tappable via a
	-- top-level `onActivated`, or the trailing input handles its own activation via `input.onActivated`.
	-- Allowing both is ambiguous, so it is disallowed.
	if Flags.FoundationListItemDecoupledInput then
		local hasItemOnActivated = props.onActivated ~= nil
		local hasInputOnActivated = typeof(props.input) == "table" and (props.input :: any).onActivated ~= nil
		devAssert(
			not (hasItemOnActivated and hasInputOnActivated),
			"ListItem: set `onActivated` on the item or on `input`, not both."
		)
	end

	local listContext = useList()
	local size: InputSize = listContext.size or InputSize.Medium

	local tokens = useTokens()

	local variantProps = useListItemVariants(tokens, size)
	local accessoryVariants = useListAccessoryVariants(tokens, size, "Icon")

	local textGapTag = if Flags.FoundationListItemTypographySpacing then DESCRIPTION_GAP_TAG[size] else "gap-small"

	local isConfigTable = typeof(props.onActivated) == "table" and (props.onActivated :: any).onActivated ~= nil

	local onActivated: () -> ()? = React.useMemo(function()
		if isConfigTable then
			return (props.onActivated :: any).onActivated
		elseif props.onActivated ~= nil then
			return props.onActivated
		end
		return nil :: any
	end, { props.onActivated, isConfigTable } :: { any })

	-- The trailing accessory, resolved independently of row tappability. `input` wins when provided;
	-- otherwise it falls back to the deprecated `onActivated` config object, and finally to a plain
	-- `onActivated` function (which implies a chevron for backward compatibility). Pass
	-- `input = ListItemInputType.None` for a tappable row with no trailing accessory.
	type ResolvedInput = { type: ListItemInputType, isChecked: boolean?, onActivated: ((boolean) -> ())? }?
	local resolvedInput: ResolvedInput = React.useMemo(function(): ResolvedInput
		if not Flags.FoundationListItemDecoupledInput then
			return nil
		end
		if props.input ~= nil then
			if typeof(props.input) == "table" then
				local config = props.input :: any
				return { type = config.type, isChecked = config.isChecked, onActivated = config.onActivated }
			end
			return { type = props.input :: any }
		elseif isConfigTable then
			local config = props.onActivated :: any
			return { type = config.inputType or ListItemInputType.Chevron, isChecked = config.isChecked :: boolean? }
		elseif props.onActivated ~= nil then
			return { type = ListItemInputType.Chevron }
		end
		return nil
	end, { props.onActivated, props.input, isConfigTable } :: { any })

	local legacyInputType: ListItemInputType? = React.useMemo(function()
		if isConfigTable then
			return (props.onActivated :: any).inputType :: any
		end
		return nil
	end, { props.onActivated, isConfigTable } :: { any })

	local legacyIsChecked: boolean? = React.useMemo(function()
		if isConfigTable then
			return (props.onActivated :: any).isChecked :: any
		end
		return nil
	end, { props.onActivated, isConfigTable } :: { any })

	local title: string? = React.useMemo(function()
		if typeof(props.title) == "string" then
			return props.title :: string?
		elseif typeof(props.title) == "table" then
			return props.title.title
		end
		return nil :: any
	end, { props.title })

	local metadata: string? = React.useMemo(function()
		if typeof(props.title) == "table" then
			return if props.title.title ~= nil then props.title.metadata else nil
		end
		return nil :: any
	end, { props.title })

	-- Sanitize title for testId generation by replacing whitespace with dashes.
	local sanitizedTitle = React.useMemo(function()
		return title and string.gsub(title, "%s+", "-") or ""
	end, { title })
	props.testId = if props.testId then props.testId else `{listContext.testId}--item-{sanitizedTitle}`

	local showInput = if Flags.FoundationListItemDecoupledInput
		then resolvedInput ~= nil and resolvedInput.type ~= ListItemInputType.None
		else props.onActivated ~= nil
	local inputType: ListItemInputType? = if Flags.FoundationListItemDecoupledInput
		then (if resolvedInput then resolvedInput.type else nil)
		else legacyInputType
	local isChecked: boolean? = if Flags.FoundationListItemDecoupledInput
		then (if resolvedInput then resolvedInput.isChecked else nil)
		else legacyIsChecked

	-- The accessory's change handler takes priority; a plain row `onActivated` is the fallback so a
	-- Checkbox/Toggle/Radio still activates a tappable row that didn't wire its own handler.
	local onInputActivated = React.useCallback(function(checked: boolean)
		if Flags.FoundationListItemDecoupledInput and resolvedInput and resolvedInput.onActivated then
			resolvedInput.onActivated(checked)
		elseif onActivated then
			onActivated()
		end
	end, { resolvedInput, onActivated } :: { unknown })

	local onRadioValueChanged = React.useCallback(function(value: string)
		onInputActivated(value == RADIO_VALUE)
	end, { onInputActivated })

	return React.createElement(View, {
		tag = "col size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
		ref = ref,
	}, {
		HoverWrapper = React.createElement(View, {
			padding = if listContext.isContained
				then tokens.Padding.Small
				else {
					left = UDim.new(0, if listContext.hasMargin then tokens.Padding.Small else -tokens.Padding.Small),
					right = UDim.new(0, if listContext.hasMargin then tokens.Padding.Small else -tokens.Padding.Small),
				},
			tag = "size-full-0 auto-y padding-y-xsmall",
			LayoutOrder = 1,
		}, {
			ListItemContainer = React.createElement(View, {
				onActivated = onActivated,
				tag = {
					["size-full-0 auto-y radius-medium"] = true,
					["margin-x-small"] = listContext.hasMargin,
					["padding-x-small"] = not listContext.hasMargin,
				},
			}, {
				ListItem = React.createElement(View, {
					testId = props.testId,
					tag = "row align-y-center gap-medium size-full-0 auto-y padding-y-small radius-medium",
				}, {
					LeadingContainer = if props.leading
						then React.createElement(ListAccessory, {
							config = props.leading,
							size = size,
							testId = `{props.testId}--leading-accessory`,
							LayoutOrder = 0,
						})
						else nil,
					Content = React.createElement(View, {
						tag = "row flex-between align-x-center align-y-center fill gap-medium auto-y",
						LayoutOrder = 1,
					}, {
						TextContainer = React.createElement(View, {
							tag = {
								["col fill auto-y padding-y-xsmall"] = true,
								[textGapTag] = true,
							},
							LayoutOrder = 1,
						}, {
							TitleContainer = if title
								then React.createElement(View, {
									tag = {
										["col auto-xy"] = true,
										["gap-xsmall"] = not Flags.FoundationListItemTypographySpacing,
									},
									LayoutOrder = 0,
								}, {
									Title = if title
										then React.createElement(Text, {
											Text = escapeRichText(title),
											RichText = true,
											tag = variantProps.title.tag,
											LayoutOrder = 0,
										})
										else nil,
									Metadata = if metadata
										then React.createElement(Text, {
											Text = metadata,
											RichText = true,
											tag = variantProps.metadata.tag,
											LayoutOrder = 1,
										})
										else nil,
								})
								else nil,
							Description = props.description and React.createElement(Text, {
								Text = props.description,
								RichText = true,
								tag = variantProps.description.tag,
								LayoutOrder = 1,
							}),
						}),
						TrailingContainer = if props.trailing
							then React.createElement(View, {
								tag = "align-x-center align-y-center auto-xy",
								LayoutOrder = 2,
							}, props.trailing)
							else nil,
						ActivatedIconContainer = if showInput
							then React.createElement(View, {
								tag = "align-x-center align-y-center auto-xy",
								LayoutOrder = 3,
							}, {
								ActivatedIcon = if inputType == nil
										or (
											Flags.FoundationListItemDecoupledInput
											and inputType == ListItemInputType.Chevron
										)
									then React.createElement(Icon, {
										name = BuilderIcons.Icon.ChevronLargeRight,
										size = variantProps.icon.size,
										testId = `{props.testId}--activated-icon`,
									})
									elseif inputType == ListItemInputType.Radio then React.createElement(
										RadioGroup.Root,
										{
											value = if isChecked then RADIO_VALUE else "",
											onValueChanged = onRadioValueChanged,
											Selectable = false,
										},
										React.createElement(RadioGroup.Item, {
											value = RADIO_VALUE,
											label = "",
											size = size,
										})
									)
									else React.createElement(
										if inputType == ListItemInputType.Checkbox then Checkbox else Toggle,
										{
											label = "",
											onActivated = onInputActivated,
											isChecked = isChecked,
											size = size,
											Selectable = false,
										}
									),
							})
							else nil,
					}),
				}),
			}),
		}),
		-- Divider: right always reaches edge when isContained; left inset to TextContainer when isInset
		-- Hide divider on the last item
		Divider = if listContext.hasDivider and props.LayoutOrder ~= listContext.lastLayoutOrder
			then if listContext.isInset
				then React.createElement(View, {
					tag = "row size-full-0 auto-y",
					LayoutOrder = 2,
				}, {
					-- Spacer to offset divider to where TextContainer starts
					LeadingSpacer = React.createElement(View, {
						Size = UDim2.fromOffset(
							(if listContext.hasMargin then tokens.Padding.Small + tokens.Margin.Small else 0)
								+ (
									if props.leading
										then accessoryVariants.container.Size.X.Offset + tokens.Gap.Medium
										else 0
								),
							0
						),
						LayoutOrder = 0,
					}),
					DividerLine = React.createElement(View, {
						tag = "fill auto-y",
						LayoutOrder = 1,
					}, React.createElement(Divider)),
				})
				else React.createElement(Divider, {
					LayoutOrder = 2,
				})
			else nil,
	})
end

return React.memo(React.forwardRef(ListItem))
