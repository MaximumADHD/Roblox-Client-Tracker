local ProviderContainer = require(script.ProviderContainer)

export type ProviderSpec = ProviderContainer.ProviderSpec
export type ProviderSpecs = ProviderContainer.ProviderSpecs

return {
	ProviderContainer = ProviderContainer,
}
