--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

export type Props = {
	providers: { React.ReactElement },
	children: React.ReactNode,
}

local function ContextStack(props: Props)
	local mostRecent = props.children

	for providerIndex = #props.providers, 1, -1 do
		local providerElement = props.providers[providerIndex]
		mostRecent = React.cloneElement(providerElement, nil, mostRecent)
	end

	return mostRecent
end

return ContextStack
