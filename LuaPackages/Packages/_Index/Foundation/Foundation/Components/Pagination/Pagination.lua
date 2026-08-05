local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PaginationVariant = require(Foundation.Enums.PaginationVariant)

local withDefaults = require(Foundation.Utility.withDefaults)

local DirectionalPagination = require(script.Parent.Variants.DirectionalPagination)
local MultiPagePagination = require(script.Parent.Variants.MultiPagePagination)

export type PaginationProps =
	MultiPagePagination.MultiPagePaginationProps
	| DirectionalPagination.DirectionalPaginationProps

local defaultProps = {
	variant = PaginationVariant.MultiPage,
	testId = "--foundation-pagination",
}

local function Pagination(paginationProps: PaginationProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props: any = withDefaults(paginationProps, defaultProps)
	props.ref = ref

	if props.variant == PaginationVariant.MultiPage then
		return React.createElement(MultiPagePagination, props)
	else
		return React.createElement(DirectionalPagination, props)
	end
end

return React.memo(React.forwardRef(Pagination))
