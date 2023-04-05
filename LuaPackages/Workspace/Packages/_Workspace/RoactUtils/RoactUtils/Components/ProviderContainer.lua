local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)

export type ProviderSpec = {
	class: any,
	props: any?,
}

export type ProviderSpecs = { ProviderSpec }
export type Props = {
	providers: ProviderSpecs?,
	children: any,
}

local function ProviderContainer(props: Props)
	local providers = props.providers or {} :: ProviderSpecs
	local children = props.children

	local treeRoot: any = { PageWrapper = React.createElement("Folder", {}, children) }

	-- Create tree of providers with first in list as outer-most element
	for i = #providers, 1, -1 do
		local provider = providers[i]
		treeRoot = {
			ProviderChildren = React.createElement(provider.class, provider.props, treeRoot),
		}
	end

	return React.createElement("Folder", nil, treeRoot)
end

return ProviderContainer
