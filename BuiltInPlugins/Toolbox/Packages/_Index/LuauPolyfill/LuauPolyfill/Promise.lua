-- this maps onto community promise libraries which won't support Luau, so we inline
export type PromiseLike<T> = {
	andThen: (
		PromiseLike<T>, -- self
		((T) -> ...(nil | T | PromiseLike<T>))?, -- resolve
		((any) -> ...(nil | T | PromiseLike<T>))? -- reject
	) -> PromiseLike<T>,
}

export type Promise<T> = {
	andThen: (
		Promise<T>, -- self
		((T) -> ...(nil | T | PromiseLike<T>))?, -- resolve
		((any) -> ...(nil | T | PromiseLike<T>))? -- reject
	) -> Promise<T>,

	catch: (Promise<T>, ((any) -> ...(nil | T | PromiseLike<nil>))) -> Promise<T>,

	onCancel: (Promise<T>, () -> ()?) -> boolean,

	expect: (Promise<T>) -> T,
}

return {}
