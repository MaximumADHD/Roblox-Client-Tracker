local Plugin = script.Parent.Parent.Parent
local Symbol = require(Plugin.Src.Util.Symbol)

return {
	Saved = Symbol.named("AutosaveStateSaved"),
	Saving = Symbol.named("AutosaveStateSaving"),
	SaveFailed = Symbol.named("AutosaveStateSaveFailed"),
}