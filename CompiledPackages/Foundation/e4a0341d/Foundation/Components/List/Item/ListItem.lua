local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Components = Foundation.Components
local Checkbox = require(Components.Checkbox)
local Divider = require(Components.Divider)
local Icon = require(Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)
local RadioGroup = require(Components.RadioGroup)
local Text = require(Components.Text)
local Toggle = require(Components.Toggle)
local Types = require(Foundation.Components.Types)
local View = require(Components.View)
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

export type ListItemProps = {
	-- The leading accessory, can be a string for an icon name or a ListAccessory config object.
	leading: string? | ListAccessory,
	-- The trailing accessory, which allows for any custom component.
	trailing: React.ReactNode?,
	title: string? | {
		title: string?,
		metadata: string?,
	},
	description: string?,
	-- onActivated will render an activated state for the ListItem. It can be a function or an object to specify inputType and isChecked for controlled Checkbox, Toggle, or Radio inputs.
	onActivated: (() -> () | {
		onActivated: () -> (),
		-- The type of input for the ListItem, can be Checkbox, Toggle, or Radio, or Chevron if not provided.
		inputType: ListItemInputType?,
		isChecked: boolean?,
	})?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {}

local function ListItem(listItemProps: ListItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(listItemProps, defaultProps)
	local listContext = useList()
	local size: InputSize = listContext.size or InputSize.Medium

	local tokens = useTokens()

	local variantProps = useListItemVariants(tokens, size)
	local accessoryVariants = useListAccessoryVariants(tokens, size, "Icon")

	local isConfigTable = typeof(props.onActivated) == "table" and (props.onActivated :: any).onActivated ~= nil

	local onActivated: () -> ()? = React.useMemo(function()
		if isConfigTable then
			return (props.onActivated :: any).onActivated
		elseif props.onActivated ~= nil then
			return props.onActivated
		end
		return nil :: any
	end, { props.onActivated, isConfigTable } :: { any })

	local inputType: ListItemInputType? = React.useMemo(function()
		if isConfigTable then
			return (props.onActivated :: any).inputType :: any
		end
		return nil
	end, { props.onActivated, isConfigTable } :: { any })

	local isChecked: boolean? = React.useMemo(function()
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

	local onInputTypeActivated = React.useCallback(function()
		if onActivated then
			onActivated()
		end
	end, { onActivated })

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
							tag = "col fill gap-small auto-y padding-y-xsmall",
							LayoutOrder = 1,
						}, {
							TitleContainer = if title
								then React.createElement(View, {
									tag = "col gap-xsmall auto-xy",
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
						ActivatedIconContainer = if props.onActivated
							then React.createElement(View, {
								tag = "align-x-center align-y-center auto-xy",
								LayoutOrder = 3,
							}, {
								ActivatedIcon = if inputType == nil
									then React.createElement(Icon, {
										name = BuilderIcons.Icon.ChevronLargeRight,
										size = variantProps.icon.size,
										testId = `{props.testId}--activated-icon`,
									})
									elseif inputType == ListItemInputType.Radio then React.createElement(
										RadioGroup.Root,
										{
											value = if isChecked then RADIO_VALUE else "",
											onValueChanged = onInputTypeActivated,
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
											onActivated = onInputTypeActivated,
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
