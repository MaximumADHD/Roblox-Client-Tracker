local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local PaginationSize = require(Foundation.Enums.PaginationSize)
type PaginationSize = PaginationSize.PaginationSize

local Pagination = script.Parent.Parent
local paginationUtils = require(Pagination.paginationUtils)

type EllipsisProps = {
	slotSize: PaginationSize,
	LayoutOrder: number,
	testId: string,
}

local function Ellipsis(props: EllipsisProps)
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = paginationUtils.getCircularSlotTag(props.slotSize),
		testId = props.testId,
	}, {
		Text = React.createElement(Text, {
			Text = "...",
			tag = paginationUtils.getPageLabelTag(props.slotSize),
			LayoutOrder = 1,
		}),
	})
end

return React.memo(Ellipsis)
