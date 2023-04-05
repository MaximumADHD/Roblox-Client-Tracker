local Root = script.Parent
local Packages = Root.Parent
local React = require(Packages.Dev.React)

export type Provider = any
export type Providers = { Provider }

return function(element: React.ReactElement<any, any>, providers: Providers)
	local accumulator = element
	for _, Factory in pairs(providers) do
		accumulator = React.createElement(Factory, nil, { ProviderChildren = accumulator })
	end

	return accumulator
end
