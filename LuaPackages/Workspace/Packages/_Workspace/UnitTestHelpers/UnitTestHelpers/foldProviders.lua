local Root = script.Parent
local Packages = Root.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.Dev.React)

export type Provider = any
export type Providers = { Provider }

return function(element: React.ReactElement<any, any>, providers: Providers)
	return Cryo.List.foldRight(providers, function(accumulator, Provider)
		return React.createElement(Provider, nil, { ProviderChildren = accumulator })
	end, element)
end
