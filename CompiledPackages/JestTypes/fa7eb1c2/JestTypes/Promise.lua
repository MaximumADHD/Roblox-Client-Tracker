export type PromiseLike<T> = {
	andThen: (
		self: PromiseLike<T>,
		resolve: ((T) -> ...(nil | T | PromiseLike<T>))?,
		reject: ((any) -> ...(nil | T | PromiseLike<T>))?
	) -> PromiseLike<T>,
}

export type PromiseStatus = "Started" | "Resolved" | "Rejected" | "Cancelled"

export type Promise<T> = {
	andThen: (
		self: Promise<T>,
		resolve: ((T) -> ...(nil | T | PromiseLike<T>))?,
		reject: ((any) -> ...(nil | T | PromiseLike<T>))?
	) -> Promise<T>,
	catch: (self: Promise<T>, reject: (any) -> ...(nil | T | PromiseLike<nil>)) -> Promise<T>,
	onCancel: (self: Promise<T>, abortHandler: (() -> ())?) -> boolean,
	expect: (self: Promise<T>) -> T,
	await: (self: Promise<T>) -> (boolean, T),
	getStatus: (self: Promise<T>) -> PromiseStatus,
	awaitStatus: (self: Promise<T>) -> (PromiseStatus, T),
}

return {}
