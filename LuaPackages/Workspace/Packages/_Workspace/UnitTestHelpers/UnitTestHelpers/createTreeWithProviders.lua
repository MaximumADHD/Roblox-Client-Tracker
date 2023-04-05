local Root = script.Parent
local Packages = Root.Parent
local React = require(Packages.Dev.React)
local foldProviders = require(script.Parent.foldProviders)

type Providers = foldProviders.Providers
export type CreateTreeWithProvidersConfig = {
	store: any?,
	initialStoreState: any?,
	providers: Providers?,
	props: any?,
}

local createTreeWithProviders = function(element: any, config: CreateTreeWithProvidersConfig?)
	config = config or {} :: CreateTreeWithProvidersConfig
	assert(config, "Config must not be nil")

	element = React.createElement(element, config.props)

	return foldProviders(element, config.providers or {})
end

return createTreeWithProviders
