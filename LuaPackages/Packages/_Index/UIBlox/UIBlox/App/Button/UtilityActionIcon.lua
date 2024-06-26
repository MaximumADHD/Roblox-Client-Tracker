local CoreGui = game:GetService("CoreGui")

local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local useStyle = require(UIBlox.Core.Style.useStyle)
local ImagesTypes = require(UIBlox.App.ImageSet.ImagesTypes)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local withHoverTooltip = require(UIBlox.App.Dialog.TooltipV2.Controllers).withHoverTooltip
local TooltipOrientation = require(UIBlox.App.Dialog.Tooltip.Enum.TooltipOrientation)
local StateLayer = require(UIBlox.Core.Control.StateLayer)
local Badge = require(UIBlox.App.Indicator.Badge)
local BadgeVariant = require(UIBlox.App.Indicator.Enum.BadgeVariant)

export type Props = {
	-- AnchorPoint of component
	anchorPoint: Vector2?,
	-- Position of component
	position: UDim2?,
	-- LayoutOrder of component in parent container
	layoutOrder: number?,
	-- Icon to be displayed
	icon: (string | ImagesTypes.ImageSetImage)?,
	-- Icon color style
	iconColor: StyleTypes.ColorItem?,
	-- Value displayed in the badge. `BadgeStates.isEmpty`
	-- can be passed in to display an empty badge
	badgeValue: (string | number | EnumItem)?,
	-- Badge variant for different color options
	badgeVariant: any,
	-- Text to be displayed on tooltip
	tooltipText: string?,
	-- Portal target where tooltip is mounted on
	tooltipTarget: Instance?,
	-- Determine whether there is outset as extended interactable area
	disableOutset: boolean?,
	-- Determine whether component is on media
	onMedia: boolean?,
	-- Callback for component activated event.
	onActivated: (() -> ())?,
}

local defaultProps = {
	badgeVariant = BadgeVariant.Alert,
	tooltipTarget = CoreGui,
	disableOutset = false,
	onMedia = false,
}

local function UtilityActionIcon(providedProps: Props, ref: React.Ref<Frame>)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local anchorPoint = props.anchorPoint
	local position = props.position
	local layoutOrder = props.layoutOrder
	local icon = props.icon
	local badgeValue = props.badgeValue
	local badgeVariant = props.badgeVariant
	local tooltipText = props.tooltipText
	local tooltipTarget = props.tooltipTarget
	local disableOutset = props.disableOutset
	local onMedia = props.onMedia
	local onActivated = props.onActivated

	local style = useStyle()
	local tokens = style.Tokens

	local innerSize = tokens.Global.Size_500
	local iconSize = tokens.Semantic.Icon.Size.Medium
	local defaultIconColor = if onMedia then tokens.Global.Color.White else tokens.Semantic.Color.Icon.Emphasis
	local iconColor = if props.iconColor then props.iconColor else defaultIconColor

	local stateStyle: StateLayer.StateStyle = if onMedia then "Darken" else "Standard"
	local badgeAnchor = Vector2.new(0, 1)
	local badgePosition = UDim2.new(0.5, tokens.Global.Size_25, 0.5, -tokens.Global.Size_25)

	local outset = React.useMemo(function()
		return if disableOutset
			then nil
			else {
				top = UDim.new(0, tokens.Global.Size_50),
				right = UDim.new(0, tokens.Global.Size_50),
				bottom = UDim.new(0, tokens.Global.Size_50),
				left = UDim.new(0, tokens.Global.Size_50),
			}
	end, { disableOutset, tokens } :: { any })

	local frameSize = React.useMemo(function()
		local baseSize = UDim.new(0, innerSize)
		return if outset
			then UDim2.new(baseSize + outset.left + outset.right, baseSize + outset.top + outset.bottom)
			else UDim2.new(baseSize, baseSize)
	end, { innerSize, outset } :: { any })

	return withHoverTooltip({
		bodyText = tooltipText,
	}, {
		disabled = if tooltipText then false else true,
		preferredOrientation = TooltipOrientation.Bottom,
		guiTarget = tooltipTarget,
		DEBUG_useTargetDirectly = props._DEBUG_is_plugin,
		DisplayOrder = 10,
	}, function(triggerPointChanged, onStateChanged)
		return React.createElement("Frame", {
			Selectable = false,
			Size = frameSize,
			AnchorPoint = anchorPoint,
			Position = position,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
			ref = ref,
		}, {
			Background = if onMedia
				then React.createElement("Frame", {
					Selectable = false,
					Size = UDim2.fromOffset(innerSize, innerSize),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					BorderSizePixel = 0,
					BackgroundColor3 = tokens.Global.Color.Black.Color3,
					BackgroundTransparency = 0.5,
					ZIndex = 1,
				}, {
					UICorner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, tokens.Semantic.Radius.Circle),
					}),
				})
				else nil,
			StateLayer = React.createElement(StateLayer, {
				size = UDim2.fromOffset(innerSize, innerSize),
				anchorPoint = Vector2.new(0.5, 0.5),
				position = UDim2.fromScale(0.5, 0.5),
				cornerRadius = UDim.new(0, tokens.Semantic.Radius.Circle),
				zIndex = 2,
				stateStyle = stateStyle,
				outset = outset,
				onStateChanged = onStateChanged,
				onActivated = onActivated,
			}),
			Icon = React.createElement(ImageSetLabel, {
				Selectable = false,
				Size = UDim2.fromOffset(iconSize, iconSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Image = icon,
				ImageColor3 = iconColor.Color3,
				ImageTransparency = iconColor.Transparency,
				BackgroundTransparency = 1,
				ZIndex = 3,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, tokens.Semantic.Radius.Circle),
				}),
				Badge = if badgeValue
					then React.createElement(Badge, {
						position = badgePosition,
						anchorPoint = badgeAnchor,
						value = badgeValue,
						badgeVariant = badgeVariant,
					})
					else nil,
			}, props.children),
		})
	end)
end

return React.forwardRef(UtilityActionIcon)
