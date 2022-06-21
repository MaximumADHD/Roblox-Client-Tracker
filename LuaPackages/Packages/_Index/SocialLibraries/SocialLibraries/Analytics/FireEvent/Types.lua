export type Enumerate = {
	getRawValue: () -> string,
	isEnumValue: (enum: any) -> boolean,
	fromRawValue: (enum: string) -> Enumerate,
}

export type AdditionalInfo = {
	[string]: any,
}

export type EventStreamAction = {
	context: Enumerate,
	eventType: Enumerate,
	additionalInfo: {
		[string]: any,
	}?,
	formatRulesForAdditionalInfo: {
		[string]: any,
	}?,
}

export type DiagEventAction = {
	name: string,
	count: number?,
}

export type EventStreamList = {
	[Enumerate]: EventStreamAction,
}

export type DiagEventList = {
	[Enumerate]: DiagEventAction,
}

export type Logger = {
	info: (any, ...string) -> (),
}

return {}
