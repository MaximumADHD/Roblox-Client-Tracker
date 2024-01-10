--!strict

export type UniqueRefEntryPath = { string }

export type UniqueRefEntry = {
	Name: string,
	Count: number,
	Instances: number,
	Paths: { UniqueRefEntryPath },
}

export type UniqueRefReport = {
	Version: number,
	Roots: { UniqueRefEntry },
}

export type HeapReportStatsEntry = {
	Name: string,
	Size: number,
	Count: number,
}

export type HeapReportGraphEntry = {
	Name: string,
	Source: string?,
	Size: number,
	TotalSize: number,
	Children: { HeapReportGraphEntry },
}

export type HeapReport = {
	Version: number,
	TagBreakdown: { HeapReportStatsEntry },
	MemcatBreakdown: { HeapReportStatsEntry },
	UserdataBreakdown: { HeapReportStatsEntry },
	Graph: HeapReportGraphEntry,

	Refs: UniqueRefReport?,
}

export type SessionState = {
	snapshots: { HeapReport },

	active: number,
	compare: number,
}

return nil
