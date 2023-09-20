type systemMessageResponse = {
	key: string | { string },
	args: any?,
	metadata: string,
}
type runCallback = ((store: any, userId: number, rawText: string) -> systemMessageResponse?)

export type Command = {
	name: string,
	alias: { string },
	clientRun: runCallback,
}

return true
