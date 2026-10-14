local IdentityKind = table.freeze({
	Data = "data" :: "data",
	Pinned = "pinned" :: "pinned",
})

export type IdentityKind = typeof(IdentityKind.Data) | typeof(IdentityKind.Pinned)

return IdentityKind
