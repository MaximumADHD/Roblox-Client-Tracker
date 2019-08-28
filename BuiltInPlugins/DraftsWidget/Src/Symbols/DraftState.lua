local Plugin = script.Parent.Parent.Parent
local Symbol = require(Plugin.Src.Util.Symbol)

return {
	Outdated = Symbol.named("DraftStateOudated"),
	Deleted = Symbol.named("DraftStateDeleted"),
	Committed = Symbol.named("DraftStateCommitted"),
	Autosaved = Symbol.named("DraftStateAutosaved"),
}