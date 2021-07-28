export type DebuggerStateToken = {
    session : number, -- session can be convert to some breakpoint Ids (Plural) later when this is set up
}

local function fromData(data) : DebuggerStateToken
	return {
		session = data.session,
	}
end

return {
	fromData = fromData,
}
