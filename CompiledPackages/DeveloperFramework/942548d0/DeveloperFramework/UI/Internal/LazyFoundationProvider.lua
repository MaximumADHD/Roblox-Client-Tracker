--[[
	Ensures a Foundation.FoundationProvider sits above its children, creating one
	(theme-synced with Studio) only when the tree doesn't already have one.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Parent.React)
local Foundation = require(Framework.Parent.Foundation)

local useStudioThemeName = require(Framework.UI.Hooks.useStudioThemeName)

local FoundationProvider = Foundation.FoundationProvider
local useTokens = Foundation.Hooks.useTokens

type FoundationTheme = Foundation.Theme

export type Props = {
	children: React.ReactNode,
}

local function LazyFoundationProvider(props: Props)
	local tokens = useTokens()
	-- Foundation's Theme values match Studio's Theme.Name, so no mapping is needed.
	local themeName = (useStudioThemeName() :: any) :: FoundationTheme

	-- useTokens returns an empty table only when no FoundationProvider is above us; if it has
	-- entries a provider already exists, so we skip adding another and just pass children through.
	if next(tokens :: any) ~= nil then
		return React.createElement(React.Fragment, nil, props.children)
	end

	return React.createElement(FoundationProvider, {
		theme = themeName,
	}, props.children)
end

return LazyFoundationProvider
