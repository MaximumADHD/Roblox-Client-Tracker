local EventNames = require(script.Parent.EventNames)

type GenericDiagAction = { name: string, count: number? }

return {
	[EventNames.QRPageLoad] = {
		name = game:DefineFastString("ProfileQRPageLoad", "ProfileQRPageLoad") :: string,
	} :: GenericDiagAction,
}
