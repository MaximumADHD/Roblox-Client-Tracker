--!strict

local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local TextService = game:GetService("TextService")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)
local ReactRoblox = require(ViewportToolingFramework.Parent.ReactRoblox)

local ToolbarBaseContext = require(ViewportToolingFramework.Util.ToolbarBaseContext)
local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)
local useToggleState = require(ViewportToolingFramework.Hooks.useToggleState)

local LayoutOrderIterator: any = Framework.Util.LayoutOrderIterator

local Focus = (Framework.ContextServices :: any).Focus

export type Props = {
	Title: string,
	Description: string?,
}

local DESCRIPTION_FONT = Enum.Font.SourceSans
local DESCRIPTION_TEXT_SIZE = 14

local MAX_WIDTH = 180
local PADDING = 5

local function Tooltip(props: Props)
	local toolbarBaseContext = React.useContext(ToolbarBaseContext)

	local styleSheet = useStyleSheet()

	local focus = Focus:use()
	assert(focus ~= nil, "Tooltip mounting without a Focus")

	local position, setPosition = React.useState(Vector2.new())
	local size, setSize = React.useState(Vector2.new())

	local hovered = useToggleState(false)

	local layoutOrderIterator = LayoutOrderIterator.new()

	local descriptionSize = React.useMemo(function(): Vector2
		if props.Description == nil then
			return Vector2.zero
		end

		return TextService:GetTextSize(
			props.Description,
			DESCRIPTION_TEXT_SIZE,
			DESCRIPTION_FONT,
			Vector2.new(MAX_WIDTH, math.huge)
		)
	end, { props.Description })

	return React.createElement("Frame", {
		[React.Tag] = "X-Fill",

		[React.Change.AbsolutePosition] = function(instance: Frame)
			setPosition(instance.AbsolutePosition)
		end :: any, -- Luau: React is not very good with Change and Event being defined in props at the same time

		[React.Change.AbsoluteSize] = function(instance: Frame)
			setSize(instance.AbsoluteSize)
		end :: any, -- Luau: Ditto

		[React.Event.MouseEnter] = hovered.enable :: any, -- Luau: Ditto
		[React.Event.MouseLeave] = hovered.disable :: any, -- Luau: Ditto
	}, {
		VisibleTooltip = hovered.enabled and ReactRoblox.createPortal(
			React.createElement("Folder", {}, {
				AvoidFOUC = React.createElement("Frame", {
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(position.X, position.Y),
					Size = UDim2.fromOffset(size.X, size.Y),

					ZIndex = 100,
				}, {
					Tooltip = React.createElement("Frame", {
						[React.Tag] = `VPF-Tooltip VPF-Tooltip--{toolbarBaseContext.Direction} X-ColumnS`,
					}, {
						UIPadding = React.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, PADDING),
							PaddingRight = UDim.new(0, PADDING),
							PaddingTop = UDim.new(0, PADDING),
							PaddingBottom = UDim.new(0, PADDING),
						}),

						UISizeConstraint = React.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(MAX_WIDTH, math.huge),
						}),

						Title = React.createElement("TextLabel", {
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Text = props.Title,
							[React.Tag] = "VPF-Tooltip__Title",
						}),

						Description = props.Description and React.createElement("TextLabel", {
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Font = DESCRIPTION_FONT,
							Size = UDim2.fromOffset(descriptionSize.X + PADDING, descriptionSize.Y + PADDING),
							Text = props.Description,
							TextSize = DESCRIPTION_TEXT_SIZE,
							[React.Tag] = "VPF-Tooltip__Description",
						}),
					}),
				}),

				-- We can't be sure the focus has the style link (like in the case of Storybook)
				StyleLink = React.createElement("StyleLink", {
					StyleSheet = styleSheet,
				}),
			}),
			focus:get()
		),
	})
end

return Tooltip
