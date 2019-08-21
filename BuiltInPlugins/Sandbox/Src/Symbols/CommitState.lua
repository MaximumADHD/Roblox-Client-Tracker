local Plugin = script.Parent.Parent.Parent
local Symbol = require(Plugin.Src.Util.Symbol)

return {
	Uncommitted = Symbol.named("CommitStatusUncommitted"),
	Committing = Symbol.named("CommitStatusCommitting"),
	Committed = Symbol.named("CommitStatusCommitted"),
}