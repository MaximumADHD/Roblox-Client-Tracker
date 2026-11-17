local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)

type HeaderBarSlot = HeaderBarSlot.HeaderBarSlot

export type HeaderBarContext = {
	testId: string,
	slot: HeaderBarSlot?,
	leadingWidth: number?,
	trailingWidth: number?,
	onSideWidthChanged: ((HeaderBarSlot, number) -> ())?,
}

local HeaderBarContext = React.createContext<<HeaderBarContext>>({
	testId = "",
})

export type HeaderBarProviderProps = {
	testId: string,
	slot: HeaderBarSlot?,
	leadingWidth: number?,
	trailingWidth: number?,
	onSideWidthChanged: ((HeaderBarSlot, number) -> ())?,
	children: React.ReactNode,
}

local function HeaderBarProvider(props: HeaderBarProviderProps)
	local contextValue = React.useMemo(
		function(): HeaderBarContext
			return {
				testId = props.testId,
				slot = props.slot,
				leadingWidth = props.leadingWidth,
				trailingWidth = props.trailingWidth,
				onSideWidthChanged = props.onSideWidthChanged,
			}
		end,
		{
			props.testId,
			props.slot,
			props.leadingWidth,
			props.trailingWidth,
			props.onSideWidthChanged,
		} :: { unknown }
	)

	return React.createElement(HeaderBarContext.Provider, {
		value = contextValue,
	}, props.children)
end

return {
	Context = HeaderBarContext,
	Provider = HeaderBarProvider,
}
