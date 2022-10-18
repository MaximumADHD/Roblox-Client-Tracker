local Packages = script.Parent.Parent
local Symbol = require(Packages.AppCommonLib).Symbol

return {
    Hidden = Symbol.named("Hidden"),
    Closed = Symbol.named("Closed"),
    Brief = Symbol.named("Brief"),
    SuperBrief = Symbol.named("SuperBrief"),
    Full = Symbol.named("Full"),
    Extended = Symbol.named("Extended"),
}
