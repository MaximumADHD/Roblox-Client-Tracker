-- The payload-free ordered identity seam consumed by Virtualization.
export type ItemSequence = {
	getItemCount: () -> number,
	getItemKey: (index: number) -> string,
}

return {}
