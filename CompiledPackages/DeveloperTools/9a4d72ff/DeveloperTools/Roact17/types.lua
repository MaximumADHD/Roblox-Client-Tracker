local Types = require(script.Parent.Parent.Types)

export type Devtools = {
	-- These have types in the React source, but it is currently difficult to import them
	agent: any,
	bridge: any,
	hook: any,
	store: any,
}

export type ChangeDescription = {
	isFirstMount: boolean,
	props: {}?,
	state: {}?,
}

export type CommitData = {
	changeDescriptions: Types.Array<Types.Pair<number, ChangeDescription>>,
	fiberActualDurations: Types.Array<Types.Pair<number, number>>,
	fiberSelfDurations: Types.Array<Types.Pair<number, number>>,
}

export type RootData = {
	commitData: Types.Array<CommitData>
}

export type ProfilerData = {
	dataForRoots: {
		[number]: RootData
	}
}

local ElementType = {
	Class = 1,
	Context = 2,
	Function = 5,
	ForwardRef = 6,
	HostComponent = 7,
	Memo = 8,
	OtherOrUnknown = 9,
	Profiler = 10,
	Root = 11,
	Suspense = 12,
	SuspenseList = 13,
}

return {
	ElementType = ElementType
}
