local CorePackages = game:GetService("CorePackages")
local Signals = require(CorePackages.Packages.Signals)

local EnumReactPage = require(script.Parent.EnumReactPage)

export type ReactPageSignal = {
	currentReactPage: Signals.getter<EnumReactPage.EnumReactPage?>,
	setCurrentReactPage: Signals.setter<EnumReactPage.EnumReactPage?>,
}

local function ReactPageSignal(): ReactPageSignal
	local currentReactPage, setCurrentReactPage = Signals.createSignal(nil :: EnumReactPage.EnumReactPage?)
	return {
		currentReactPage = currentReactPage,
		setCurrentReactPage = setCurrentReactPage,
	}
end

return Signals.createComputed(ReactPageSignal)
