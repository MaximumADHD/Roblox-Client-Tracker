local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)
local getGridSizeTag = require(Foundation.Utility.getGridSizeTag)

type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps
type ResponsiveValue<T> = Types.ResponsiveValue<T>

type GridCellViewProps = GuiObjectProps & CommonProps

export type GridCellProps = {
	size: number | ResponsiveValue<number>,
} & GridCellViewProps

local defaultProps: GridCellProps = {
	size = 1,
	testId = "--foundation-grid--cell",
}

local function GridCell(gridCellProps: GridCellProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(gridCellProps, defaultProps)
	local viewProps = Dash.omit(props, { "size" }) :: GridCellViewProps

	local sizeTag = React.useMemo(function()
		return getGridSizeTag(props.size :: ResponsiveValue<number>)
	end, { props.size })

	return React.createElement(
		View,
		Dash.assign(viewProps, {
			tag = table.concat({ sizeTag, props.tag :: string }, " "),
			ref = ref,
		}),
		props.children :: React.ReactNode
	)
end

return React.memo(React.forwardRef(GridCell))
