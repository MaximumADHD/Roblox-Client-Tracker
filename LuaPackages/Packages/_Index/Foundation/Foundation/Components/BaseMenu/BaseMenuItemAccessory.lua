local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Badge = require(Foundation.Components.Badge)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Tokens = require(Foundation.Providers.Style.Tokens)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)

type Tokens = Tokens.Tokens
type InputSize = InputSize.InputSize

type IconAccessoryConfig = Types.IconAccessoryConfig
type AvatarAccessoryConfig = Types.AvatarAccessoryConfig
type HintAccessoryConfig = Types.HintAccessoryConfig
type BadgeAccessoryConfig = Types.BadgeAccessoryConfig

export type LeadingAccessory = IconAccessoryConfig | AvatarAccessoryConfig
export type TrailingAccessory = HintAccessoryConfig | BadgeAccessoryConfig

export type IconVariantTag = { tag: string, style: any, size: number }

local SLOT_ALIGN = "align-x-center align-y-center"

local ICON_PRESENTATION = { colorNamespace = ColorNamespace.Color, isIconSize = true }
local HINT_TAG = "row align-y-center auto-xy padding-x-xsmall radius-small bg-shift-200"
local HINT_TEXT_TAG = "auto-xy text-caption-medium content-muted"

export type AccessoryProps = {
	LayoutOrder: number,
	accessory: LeadingAccessory | TrailingAccessory | nil,
	iconVariant: IconVariantTag,
	size: InputSize,
	tokens: Tokens,
	testId: string?,
}

local function Accessory(props: AccessoryProps): React.ReactNode
	local accessory = props.accessory
	if accessory == nil then
		return nil
	end

	local slotTag = `{SLOT_ALIGN} {props.iconVariant.tag}`

	if accessory.type == AccessoryType.Avatar then
		return React.createElement(View, {
			LayoutOrder = props.LayoutOrder,
			tag = slotTag,
			testId = props.testId,
		}, {
			Avatar = React.createElement(PresentationContext.Provider, {
				value = if Flags.FoundationStableContextValues
					then ICON_PRESENTATION
					else {
						colorNamespace = ColorNamespace.Color,
						isIconSize = true,
					},
			}, {
				Avatar = React.createElement(Avatar, {
					userId = accessory.userId,
					backplateStyle = props.tokens.Color.Shift.Shift_200,
					size = props.size,
				}),
			}),
		})
	end

	if accessory.type == "Hint" then
		return React.createElement(View, {
			LayoutOrder = props.LayoutOrder,
			tag = HINT_TAG,
			testId = props.testId,
		}, {
			Text = React.createElement(Text, {
				Text = accessory.text,
				tag = HINT_TEXT_TAG,
			}),
		})
	end

	if accessory.type == "Badge" then
		return React.createElement(Badge, {
			LayoutOrder = props.LayoutOrder,
			text = accessory.text,
			icon = accessory.icon,
			variant = accessory.variant,
			testId = props.testId,
		})
	end

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = slotTag,
		testId = props.testId,
	}, {
		Icon = React.createElement(Icon, {
			name = accessory.iconName,
			variant = accessory.iconVariant,
			style = props.iconVariant.style,
			size = props.iconVariant.size,
		}),
	})
end

return Accessory
