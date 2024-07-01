--!strict
-- this maps onto community promise libraries which won't support Luau, so we inline
export type PromiseLike<T> = {
	andThen: (
		self: PromiseLike<T>,
		resolve: ((T) -> ...(nil | T | PromiseLike<T>))?,
		reject: ((any) -> ...(nil | T | PromiseLike<T>))?
	) -> PromiseLike<T>,
}

export type Promise<T> = {
	andThen: (
		self: Promise<T>,
		resolve: ((T) -> ...(nil | T | PromiseLike<T>))?,
		reject: ((any) -> ...(nil | T | PromiseLike<T>))?
	) -> Promise<T>,

	catch: (Promise<T>, ((any) -> ...(nil | T | PromiseLike<nil>))) -> Promise<T>,

	onCancel: (Promise<T>, () -> ()?) -> boolean,

	expect: (Promise<T>) -> ...T,

	-- FIXME Luau: need union type packs to parse  (...T) | () | PromiseLike<T> here
	await: (Promise<T>) -> (boolean, ...(T | any)),
}

return {}
