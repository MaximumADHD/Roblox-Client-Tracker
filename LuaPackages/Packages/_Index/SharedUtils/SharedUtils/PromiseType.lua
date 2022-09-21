local root = script.Parent
local Packages = root.Parent

-- selene: allow(unused_variable)
local Promise = require(Packages.Promise)

type PromiseStatus =
	typeof(Promise.Status.Started)
	| typeof(Promise.Status.Resolved)
	| typeof(Promise.Status.Rejected)
	| typeof(Promise.Status.Cancelled)

export type PromiseLike<T> = {
	cancel: (self: PromiseLike<T>) -> (),
	andThen: (self: PromiseLike<T>, ((T) -> ...(nil | T | PromiseLike<T>))?) -> PromiseLike<T>,
	await: (self: PromiseLike<T>) -> (boolean, T | any),
	getStatus: (self: PromiseLike<T>) -> PromiseStatus,
	_source: string,
}

return {}
