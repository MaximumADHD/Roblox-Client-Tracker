local RecyclableViewReadiness = table.freeze({
	ReadyOnAssignment = "ReadyOnAssignment" :: "ReadyOnAssignment",
	ReadyOnCommit = "ReadyOnCommit" :: "ReadyOnCommit",
})

export type RecyclableViewReadiness =
	typeof(RecyclableViewReadiness.ReadyOnAssignment) | typeof(RecyclableViewReadiness.ReadyOnCommit)

return RecyclableViewReadiness
