local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Image = require(Foundation.Components.Image)
local Icon = require(Foundation.Components.Icon)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local getIconScale = require(Foundation.Utility.getIconScale)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local Flags = require(Foundation.Utility.Flags)

local Constants = require(Foundation.Constants)

type InputSize = InputSize.InputSize
type FillBehavior = FillBehavior.FillBehavior
type IconVariant = BuilderIcons.IconVariant

local useTabVariants = require(script.Parent.useTabItemVariants)

export type TabItemIcon = {
	name: string,
	variant: IconVariant?,
}

export type TabItem = {
	id: Types.ItemId,
	text: string,
	icon: (string | TabItemIcon)?,
	isDisabled: boolean?,
	-- Could be defined in the Tabs, since it's needed only there, but intersection types are hell with curent solver.
	content: React.ReactNode?,
}

export type TabItemProps = TabItem & {
	isActive: boolean,
	onActivated: (id: Types.ItemId) -> (),
	size: InputSize,
	fillBehavior: FillBehavior,
	testId: string?,
}

local function TabItem(props: TabItemProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local contentStyle = if props.isActive then tokens.Color.Content.Default else tokens.Color.Content.Emphasis

	local borderSize = tokens.Stroke.Thick
	local isFill = props.fillBehavior == FillBehavior.Fill

	local variantProps = useTabVariants(tokens, props.size, isFill)

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, 0),
			offset = 0,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local icon: TabItemIcon? = React.useMemo(function()
		if props.icon == nil then
			return nil :: TabItemIcon?
		elseif typeof(props.icon) == "string" then
			return {
				name = props.icon,
				variant = BuilderIcons.IconVariant.Regular,
			}
		else
			return props.icon
		end
	end, { props.icon })

	local _Icon: React.ReactNode
	if icon then
		if isBuilderIconOrMigrated(icon.name) then
			_Icon = React.createElement(Icon, {
				name = if isMigrated(icon.name) then migrationLookup[icon.name].name else icon.name,
				variant = if isMigrated(icon.name) then migrationLookup[icon.name].variant else icon.variant,
				size = variantProps.icon.size,
				style = contentStyle,
			})
		else
			local intrinsicIconSize, scale = getIconScale(icon.name, variantProps.icon.size)
			if intrinsicIconSize then
				_Icon = React.createElement(Image, {
					Image = icon.name,
					Size = UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y),
					imageStyle = contentStyle,
					scale = scale,
				})
			end
		end
	end

	local Size: UDim2
	local Position: UDim2 | nil
	if isFill then
		Size = UDim2.fromScale(1, 1)
		Position = nil
	else
		local hoverAreaOffset = tokens.Size.Size_100
		Size = UDim2.new(1, hoverAreaOffset * 2, 1, 0)
		Position = UDim2.fromOffset(-hoverAreaOffset, 0)
	end

	return React.createElement(View, {
		tag = variantProps.container.tag,
		GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
		testId = props.testId,
	}, {
		Interactive = React.createElement(View, {
			LayoutOrder = 1,
			Size = Size,
			Position = Position,
			onActivated = function()
				props.onActivated(props.id)
			end,
			selection = {
				Selectable = not props.isDisabled,
			},
			cursor = cursor,
			isDisabled = props.isDisabled,
			ref = if Flags.FoundationAnimateTabs then ref else nil,
		}),
		Content = React.createElement(View, {
			LayoutOrder = 2,
			tag = variantProps.content.tag,
		}, {
			Icon = if props.icon then _Icon else nil,
			Text = React.createElement(Text, {
				Text = props.text,
				style = contentStyle,
				tag = variantProps.text.tag,
				LayoutOrder = 2,
			}),
		}),
		Border = if props.isActive and not Flags.FoundationAnimateTabs
			then React.createElement(View, {
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 0, borderSize),
				Position = UDim2.new(0, 0, 1, -borderSize),
				backgroundStyle = tokens.Color.System.Contrast,
				testId = `{props.testId}--border`,
			})
			else nil,
	})
end

return if Flags.FoundationAnimateTabs then React.memo(React.forwardRef(TabItem)) else TabItem
