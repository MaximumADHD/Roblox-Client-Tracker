type systemMessageResponse = {
	key: string,
	args: any?,
	metadata: string,
}
type runCallback = ((store: any, textSource: TextSource, rawText: string) -> systemMessageResponse?)

export type Command = {
	name: string,
	alias: { string },
	clientRun: runCallback?,
}

return true
