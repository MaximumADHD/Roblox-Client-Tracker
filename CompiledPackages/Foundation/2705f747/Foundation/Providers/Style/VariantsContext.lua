local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

type ValueFactory<Result, Args...> = (Args...) -> Result

function getOrSet<Key, Result, Args...>(cache: { [Key]: Result }, key: Key, valueFactory: ValueFactory<Result, Args...>, ...)
	local value = cache[key]
	if not value then
		value = valueFactory(...)
		cache[key] = value
	end
	return value
end

type useVariants = <Tokens, Result>(
	componentName: string,
	variantsFactory: ValueFactory<Result, Tokens>,
	tokens: Tokens
) -> Result

function useVariantsState()
	local cache = React.useRef({})
	local oldTokens = React.useRef(nil :: unknown)
	return React.useCallback(
		function<Tokens, Result>(componentName: string, variantsFactory: ValueFactory<Result, Tokens>, tokens: Tokens): Result
			if oldTokens.current ~= tokens then
				table.clear(cache.current)
				oldTokens.current = tokens
			end
			return getOrSet(cache.current, componentName, variantsFactory, tokens)
		end,
		{}
	)
end

local context = React.createContext(nil :: useVariants?)

function useVariants<Tokens, Result>(componentName: string, variantsFactory: ValueFactory<Result, Tokens>, tokens: Tokens)
	local value = React.useContext(context)
	if value == nil then
		error("VariantsContext hasn't been instantiated")
	end
	return (value :: useVariants)(componentName, variantsFactory, tokens)
end

return {
	useVariants = useVariants,
	useVariantsState = useVariantsState,
	Provider = context.Provider,
}
