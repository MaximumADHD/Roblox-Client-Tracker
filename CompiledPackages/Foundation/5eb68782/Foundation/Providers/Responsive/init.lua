local Hooks = require(script.Hooks)
local ResponsiveProvider = require(script.ResponsiveProvider)
export type ResponsiveProviderProps = ResponsiveProvider.ResponsiveProviderProps

return {
	ResponsiveProvider = ResponsiveProvider,
	Hooks = Hooks,
}
