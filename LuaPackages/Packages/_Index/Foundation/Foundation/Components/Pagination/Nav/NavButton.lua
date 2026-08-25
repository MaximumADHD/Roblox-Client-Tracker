local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local PaginationDirection = require(Foundation.Enums.PaginationDirection)
local Types = require(Foundation.Components.Types)
type PaginationDirection = PaginationDirection.PaginationDirection
local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local IconName = BuilderIcons.Icon

type DirectionConfig = {
	icon: string,
	testIdSuffix: string,
}

local DIRECTION_CONFIG: { [PaginationDirection]: DirectionConfig } = {
	[PaginationDirection.First] = {
		icon = IconName.ChevronSmallLeftToLine,
		testIdSuffix = "first",
	},
	[PaginationDirection.Backward] = {
		icon = IconName.ChevronSmallLeft,
		testIdSuffix = "back",
	},
	[PaginationDirection.Forward] = {
		icon = IconName.ChevronSmallRight,
		testIdSuffix = "forward",
	},
	[PaginationDirection.Last] = {
		icon = IconName.ChevronSmallRightToLine,
		testIdSuffix = "last",
	},
}

local function getInputSize(slotSize: PaginationSize): InputSize
	if slotSize == PaginationSize.Small then
		return InputSize.XSmall
	else
		return InputSize.Small
	end
end

type NavButtonProps = {
	baseTestId: string,
	slotSize: PaginationSize,
	direction: PaginationDirection,
	isDisabled: boolean,
	LayoutOrder: number,
	onDirectionActivated: (direction: PaginationDirection) -> (),
} & Types.SelectionProps

local function NavButton(props: NavButtonProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local directionConfig = DIRECTION_CONFIG[props.direction]
	local testId = `{props.baseTestId}--{directionConfig.testIdSuffix}`

	local onActivated = React.useCallback(function()
		props.onDirectionActivated(props.direction)
	end, { props.onDirectionActivated, props.direction } :: { unknown })

	return React.createElement(IconButton, {
		LayoutOrder = props.LayoutOrder,
		testId = testId,
		ref = ref,
		icon = directionConfig.icon,
		size = getInputSize(props.slotSize),
		variant = ButtonVariant.Utility,
		isCircular = true,
		isDisabled = props.isDisabled,
		onActivated = onActivated,
		Selectable = props.Selectable,
		NextSelectionLeft = props.NextSelectionLeft,
		NextSelectionRight = props.NextSelectionRight,
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionDown = props.NextSelectionDown,
	})
end

return React.memo(React.forwardRef(NavButton))
