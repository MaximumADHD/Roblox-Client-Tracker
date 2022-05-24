export type DebuggerStateToken = {
	debuggerConnectionId: number,
}

local function fromData(data): DebuggerStateToken
	return {
		debuggerConnectionId = data.debuggerConnectionId,
	}
end

return {
	fromData = fromData,
}
