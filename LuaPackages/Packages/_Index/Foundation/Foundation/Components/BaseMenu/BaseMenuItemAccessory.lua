local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Badge = require(Foundation.Components.Badge)
local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local Flags = require(Foundation.Utility.Flags)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon
local normalizeIconName = iconMigrationUtils.normalizeIconName

local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Tokens = require(Foundation.Providers.Style.Tokens)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
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
local MEDIA_TAG = "size-full-full radius-xsmall"

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
				value = ICON_PRESENTATION,
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

	if Flags.FoundationBaseMenuAccessorySizing and not isBuilderOrMigratedIcon(accessory.iconName) then
		return React.createElement(View, {
			LayoutOrder = props.LayoutOrder,
			tag = slotTag,
			testId = props.testId,
		}, {
			Media = React.createElement(Image, {
				Image = accessory.iconName,
				ScaleType = Enum.ScaleType.Crop,
				tag = MEDIA_TAG,
				testId = `{props.testId}--media`,
			}),
		})
	end

	local normalizedIcon = if Flags.FoundationBaseMenuAccessorySizing
		then normalizeIconName(accessory.iconName)
		else nil :: never

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = slotTag,
		testId = props.testId,
	}, {
		Icon = React.createElement(Icon, {
			name = if Flags.FoundationBaseMenuAccessorySizing then normalizedIcon.name else accessory.iconName,
			variant = if Flags.FoundationBaseMenuAccessorySizing
				then normalizedIcon.variant or accessory.iconVariant
				else accessory.iconVariant,
			style = props.iconVariant.style,
			size = props.iconVariant.size,
		}),
	})
end

return Accessory
